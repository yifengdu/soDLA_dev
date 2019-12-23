// See LICENSE.txt for license details.
package nvdla

import chisel3._
import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner


object caccLauncher{  
  implicit val conf: nvdlaConfig = new nvdlaConfig
  val cacc = Map(

      "NV_NVDLA_CACC_calculator_oc" -> { 
        (manager: TesterOptionsManager) =>
        Driver.execute(() => new NV_NVDLA_CACC_calculator_oc(), manager) {
          (c) => new NV_NVDLA_CACC_calculator_ocTests(c)
        }
      } 
  

  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("cacc", cacc, args)
  }
}

