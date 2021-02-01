const templates = new WeakMap()
class CharactersRemainingElement extends HTMLElement {

  get input(): HTMLInputElement | null {
    if (!this.hasAttribute('for')) return null
    const el = this.ownerDocument.getElementById(this.getAttribute('for')!)
    if (el instanceof HTMLInputElement) return el
    return null
  }

  connectedCallback() {
    templates.set(this, this.textContent)
    this.input?.addEventListener('input', this)
    this.handleEvent()
  }

  disconnectedCallback() { 
    this.input?.removeEventListener('input', this)
  }

  handleEvent() {
    const input = this.input
    if (!input) return
    const remaining = Math.max(0, Number(input.getAttribute('maxlength')) - input.value.length)
    this.textContent = (templates.get(this) || '%d').replace('%d', remaining)
    this.classList.toggle('text-red', remaining === 0)
    this.classList.toggle('text-orange-light', remaining < 4 && remaining > 0)
  }

}

interface Window {
  CharactersRemainingElement: typeof CharactersRemainingElement
}
interface HTMLElementTagNameMap {
  'characters-remaining': CharactersRemainingElement
}
if (!customElements.get('characters-remaining')) {
  customElements.define('characters-remaining', CharactersRemainingElement)
  window.CharactersRemainingElement = CharactersRemainingElement
}
