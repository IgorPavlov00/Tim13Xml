import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FormaA1Component } from './forma-a1.component';

describe('FormaA1Component', () => {
  let component: FormaA1Component;
  let fixture: ComponentFixture<FormaA1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FormaA1Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FormaA1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
