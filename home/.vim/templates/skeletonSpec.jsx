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
