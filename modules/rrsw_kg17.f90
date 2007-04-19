      module rrsw_kg17

      use parkind ,only : jpim, jprb
      use parrrsw, only : ng17

      implicit none
      save

!-----------------------------------------------------------------
! rrtmg_sw ORIGINAL abs. coefficients for interval 17
! band 17:  3250-4000 cm-1 (low - h2o,co2; high - h2o,co2)
!
! Initial version:  JJMorcrette, ECMWF, oct1999
! Revised: MJIacono, AER, jul2006
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
! kao     : real     
! kbo     : real     
! selfrefo: real     
! forrefo : real
!sfluxrefo: real     
!-----------------------------------------------------------------

      integer(kind=jpim), parameter :: no17 = 16

      real(kind=jprb) :: kao(9,5,13,no17)
      real(kind=jprb) :: kbo(5,5,13:59,no17)
      real(kind=jprb) :: selfrefo(10,no17), forrefo(4,no17)
      real(kind=jprb) :: sfluxrefo(no17,5)

      integer(kind=jpim) :: layreffr
      real(kind=jprb) :: rayl, strrat

!-----------------------------------------------------------------
! rrtmg_sw COMBINED abs. coefficients for interval 17
! band 17:  3250-4000 cm-1 (low - h2o,co2; high - h2o,co2)
!
! Initial version:  JJMorcrette, ECMWF, oct1999
! Revised: MJIacono, AER, jul2006
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
! ka      : real     
! kb      : real     
! absa    : real
! absb    : real
! selfref : real     
! forref  : real
! sfluxref: real     
!-----------------------------------------------------------------

      real(kind=jprb) :: ka(9,5,13,ng17) , absa(585,ng17)
      real(kind=jprb) :: kb(5,5,13:59,ng17), absb(1175,ng17)
      real(kind=jprb) :: selfref(10,ng17), forref(4,ng17)
      real(kind=jprb) :: sfluxref(ng17,5)

      equivalence (ka(1,1,1,1),absa(1,1)), (kb(1,1,13,1),absb(1,1))

      end module rrsw_kg17

