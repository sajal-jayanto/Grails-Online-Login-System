package com.bitmascot.login


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(SomeInterceptor)
class SomeInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test some interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"some")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
