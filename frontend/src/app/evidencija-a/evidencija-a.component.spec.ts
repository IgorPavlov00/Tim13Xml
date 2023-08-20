import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EvidencijaAComponent } from './evidencija-a.component';

describe('EvidencijaAComponent', () => {
  let component: EvidencijaAComponent;
  let fixture: ComponentFixture<EvidencijaAComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EvidencijaAComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EvidencijaAComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
