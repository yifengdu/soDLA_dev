// See LICENSE.txt for license details.
package nvdla

import chisel3._
import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner

object cscLauncher{  
  implicit val conf: nvdlaConfig = new nvdlaConfig
  val csc = Map(
      "NV_NVDLA_CSC_DL_IP_cfg" -> { 
        (manager: TesterOptionsManager) =>
        Driver.execute(() => new NV_NVDLA_CSC_DL_IP_cfg(), manager) {
          (c) => new NV_NVDLA_CSC_DL_IP_cfgTests(c)
        }
      } 
  )
  def main(args: Array[String]): Unit = {
    TutorialRunner("csc", csc, args)
  }
}

