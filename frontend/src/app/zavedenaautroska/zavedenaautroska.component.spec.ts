import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ZavedenaautroskaComponent } from './zavedenaautroska.component';

describe('ZavedenaautroskaComponent', () => {
  let component: ZavedenaautroskaComponent;
  let fixture: ComponentFixture<ZavedenaautroskaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ZavedenaautroskaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ZavedenaautroskaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
