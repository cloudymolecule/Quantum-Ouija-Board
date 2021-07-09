
class QUANTUM_API
    def self.get_numbers
        url = 'https://qrng.anu.edu.au/API/jsonI.php?length=10&type=uint16'
        uri = URI(url)
        response = Net::HTTP.get(uri)
        numbers = JSON.parse(response)
        numbers['data']
    end
end