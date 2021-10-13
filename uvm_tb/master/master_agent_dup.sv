`ifndef MASTER_AGENT_DUP_INCLUDED_
`define MASTER_AGENT_DUP_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_agent_dup
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_agent_dup extends uvm_agent;
  `uvm_component_utils(master_agent_dup)
    master_sequencer m_sqr_h;
    master_driver_proxy m_drv_h;
    master_monitor_proxy m_mon_h;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_agent_dup", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
endclass

function  master_agent_dup::new(string name="master_agent_dup",uvm_component parent = null);
  super.new(name,parent);
endfunction : new
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_agent_dup::build_phase(uvm_phase phase);
  super.build_phase(phase);
  m_sqr_h=master_sequencer::type_id::create("master_sequencer",this);

  m_drv_h=master_driver_proxy::type_id::create("master_driver_proxy",this);
  m_mon_h=master_monitor_proxy::type_id::create("master_monitor_proxy",this);
endfunction : build_phase

`endif

