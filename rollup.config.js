import typescript from '@rollup/plugin-typescript'
import terser from 'rollup-plugin-terser'


export default {
  input: ['app/components/primer/index.ts'],
  plugins: [ typescript() ],
  output: {
    dir: 'dist/',
    sourcemap: true,
    format: 'iife',
  }
}
