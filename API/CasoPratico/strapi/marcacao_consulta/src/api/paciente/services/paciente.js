'use strict';

/**
 * paciente service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::paciente.paciente');
