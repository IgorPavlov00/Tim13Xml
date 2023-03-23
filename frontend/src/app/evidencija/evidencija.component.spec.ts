import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EvidencijaComponent } from './evidencija.component';

describe('EvidencijaComponent', () => {
  let component: EvidencijaComponent;
  let fixture: ComponentFixture<EvidencijaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EvidencijaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EvidencijaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
