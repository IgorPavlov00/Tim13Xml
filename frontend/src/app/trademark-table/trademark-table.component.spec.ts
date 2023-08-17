import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TrademarkTableComponent } from './trademark-table.component';

describe('TrademarkTableComponent', () => {
  let component: TrademarkTableComponent;
  let fixture: ComponentFixture<TrademarkTableComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TrademarkTableComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TrademarkTableComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
