import React from 'react'
import PropTypes from 'prop-types'

const Component = ({}) => (
  <div>
    New Component
  </div>
)

export default Component

import React from 'react'
import { shallow } from 'enzyme'
import Component from './component'

describe('Component', () => {
  it('does a thing', () => {
    const component = (
      <Component />
    )

    expect(component).toDoAThing()
  })
})
