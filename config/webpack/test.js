process.env.NODE_ENV = process.env.NODE_ENV || 'development'

import { toWebpackConfig } from './environment'

export default toWebpackConfig()
