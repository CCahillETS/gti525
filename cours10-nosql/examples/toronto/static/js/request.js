export async function fetchData(endpoint, options = {}) {
    const response = await fetch(endpoint, options);
    if (!response.ok) {
        const errorMessage = await response.text();
        throw new Error(errorMessage);
    }
    return response.json();
}

export async function sendJSON(method, endpoint, data) {
    const options = {
        method: method.toUpperCase(),
        mode: "cors",
        headers: {
            "Content-Type": "application/json",
            'Accept': "application/json"
        },
        body: JSON.stringify(data),
    }
    return await fetchData(endpoint, options);
}