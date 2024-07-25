package dto;

public class AirlineTicketDto {

	private int ticketIdx;
	
	private String departureIATA;
	private String arrivalIATA;
	private String airlineIATA;
	
	private int modelIdx;
	private String departureTime;
	private String arrivalTime;
	
	private int stop;
	private String freeBaggage;
	private String codeShare;
	private String codeShareAirline;
	private String flightNumber;
	
	private String departureTerminal;
	private String arrivalTerminal;
	
	private int economyClassPrice;
	private int prestigeClassPrice;
	
	private int leftSeats;
	
	
	
	public AirlineTicketDto() {
		super();
	}

	
	
	public AirlineTicketDto(int ticketIdx, String departureIATA, String arrivalIATA, String airlineIATA, int modelIdx,
			String departureTime, String arrivalTime, int stop, String freeBaggage, String codeShare,
			String codeShareAirline, String flightNumber, String departureTerminal, String arrivalTerminal,
			int economyClassPrice, int prestigeClassPrice, int leftSeats) {
		super();
		this.ticketIdx = ticketIdx;
		this.departureIATA = departureIATA;
		this.arrivalIATA = arrivalIATA;
		this.airlineIATA = airlineIATA;
		this.modelIdx = modelIdx;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.stop = stop;
		this.freeBaggage = freeBaggage;
		this.codeShare = codeShare;
		this.codeShareAirline = codeShareAirline;
		this.flightNumber = flightNumber;
		this.departureTerminal = departureTerminal;
		this.arrivalTerminal = arrivalTerminal;
		this.economyClassPrice = economyClassPrice;
		this.prestigeClassPrice = prestigeClassPrice;
		this.leftSeats = leftSeats;
	}





	public int getTicketIdx() {
		return ticketIdx;
	}

	public void setTicketIdx(int ticketIdx) {
		this.ticketIdx = ticketIdx;
	}

	public String getDepartureIATA() {
		return departureIATA;
	}

	public void setDepartureIATA(String departureIATA) {
		this.departureIATA = departureIATA;
	}

	public String getArrivalIATA() {
		return arrivalIATA;
	}

	public void setArrivalIATA(String arrivalIATA) {
		this.arrivalIATA = arrivalIATA;
	}

	public String getAirlineIATA() {
		return airlineIATA;
	}

	public void setAirlineIATA(String airlineIATA) {
		this.airlineIATA = airlineIATA;
	}

	public int getModelIdx() {
		return modelIdx;
	}

	public void setModelIdx(int modelIdx) {
		this.modelIdx = modelIdx;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public int getStop() {
		return stop;
	}

	public void setStop(int stop) {
		this.stop = stop;
	}

	public String getFreeBaggage() {
		return freeBaggage;
	}

	public void setFreeBaggage(String freeBaggage) {
		this.freeBaggage = freeBaggage;
	}

	public String getCodeShare() {
		return codeShare;
	}

	public void setCodeShare(String codeShare) {
		this.codeShare = codeShare;
	}
	
	public String getCodeShareAirline() {
		return codeShareAirline;
	}

	public void setCodeShareAirline(String codeShareAirline) {
		this.codeShareAirline = codeShareAirline;
	}

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	public String getDepartureTerminal() {
		return departureTerminal;
	}

	public void setDepartureTerminal(String departureTerminal) {
		this.departureTerminal = departureTerminal;
	}

	public String getArrivalTerminal() {
		return arrivalTerminal;
	}

	public void setArrivalTerminal(String arrivalTerminal) {
		this.arrivalTerminal = arrivalTerminal;
	}

	public int getEconomyClassPrice() {
		return economyClassPrice;
	}

	public void setEconomyClassPrice(int economyClassPrice) {
		this.economyClassPrice = economyClassPrice;
	}

	public int getPrestigeClassPrice() {
		return prestigeClassPrice;
	}

	public void setPrestigeClassPrice(int prestigeClassPrice) {
		this.prestigeClassPrice = prestigeClassPrice;
	}

	public int getLeftSeats() {
		return leftSeats;
	}

	public void setLeftSeats(int leftSeats) {
		this.leftSeats = leftSeats;
	}
	
	
	
	
	
}
