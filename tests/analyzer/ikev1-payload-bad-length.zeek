# @TEST-EXEC: zeek -C -r ${TRACES}/ipsec-ikev1-payload-bad-length.pcap %INPUT
# @TEST-EXEC: cat conn.log | zeek-cut -m -n local_orig local_resp >conn.log.filtered
# @TEST-EXEC: btest-diff conn.log.filtered
#
# @TEST-DOC: Test that IPSecIKE with length 0 does not produce integer overflow analyzer errors

@load analyzer
