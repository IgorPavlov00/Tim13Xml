import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TrademarkRequestComponent } from './trademark-request.component';

describe('TrademarkRequestComponent', () => {
  let component: TrademarkRequestComponent;
  let fixture: ComponentFixture<TrademarkRequestComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TrademarkRequestComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TrademarkRequestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
