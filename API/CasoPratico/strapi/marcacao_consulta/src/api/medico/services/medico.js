'use strict';

/**
 * medico service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::medico.medico');
