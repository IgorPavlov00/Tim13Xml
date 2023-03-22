import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TabelaZahtevaComponent } from './tabela-zahteva.component';

describe('TabelaZahtevaComponent', () => {
  let component: TabelaZahtevaComponent;
  let fixture: ComponentFixture<TabelaZahtevaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TabelaZahtevaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TabelaZahtevaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
