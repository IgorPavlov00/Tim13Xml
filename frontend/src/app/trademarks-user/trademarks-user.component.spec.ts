import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TrademarksUserComponent } from './trademarks-user.component';

describe('TrademarksUserComponent', () => {
  let component: TrademarksUserComponent;
  let fixture: ComponentFixture<TrademarksUserComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TrademarksUserComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TrademarksUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
