import 'package:flutter/material.dart';


class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calls",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),

          

          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: "clear",
                child: Text("Clear call log"),
              ),
              PopupMenuItem(
                value: "scheduled",
                child: Text("Scheduled calls"),
              ),
              PopupMenuItem(
                value: "settings",
                child: Text("Settings"),
              ),PopupMenuItem(
                value: "switch",
                child: Text("Switch account"),
              ),
            ],
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.call_outlined),
                    ),
                    SizedBox(height: 8),
                    Text("Call"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.calendar_month),
                    ),
                    SizedBox(height: 8),
                    Text("Schedule"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.dialpad),
                    ),
                    SizedBox(height: 8),
                    Text("Keypad"),
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.favorite),
                    ),
                    SizedBox(height: 8),
                    Text("Favorites"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Recent",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyXf-u3ZTmcudOZCUe49v2ew8bZ8tx3yyDZQ&s",
              ),
                    ),
                    title: Text("Dev"),
                    subtitle: Text("Yesterday, 8:45 PM"),
                    trailing: Icon(Icons.video_call),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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",
              )
                    ),
                    title: Text("Achan"),
                    subtitle: Text("Today, 9:15 AM"),
                    trailing: Icon(Icons.call),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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",
              ),
                    ),
                    title: Text("Amma"),
                    subtitle: Text("Today, 7:30 AM"),
                    trailing: Icon(Icons.call),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,backgroundImage: NetworkImage(
                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAywMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAgMEBgcAAf/EAD8QAAIBAwMCAwUFBgQFBQAAAAECAwAEEQUSITFBBhNRIjJhcZEUQoGhsQcVI1LB0TNikvAWNENTgiRUouHx/8QAGgEAAwEBAQEAAAAAAAAAAAAAAQIDBAAFBv/EACcRAAICAgIBBAICAwAAAAAAAAABAhEDIRIxUQQTIkEyYXGhBTNi/9oADAMBAAIRAxEAPwCwpoEu0xnYEJztxxTX/CqfafPwA59KtPmgngfSu3rnoa+fT/Zd2yr3Hg22un3z8tT914TtL1IkuACI/dNWLzlH3Ca9Eyd1p1L/AKAVP/gDSWPtxA/jT6+BdFBBMA9OtWQ3C/yUkzDqFo+6/IKXgCW/g3Sbe4E0MIWRfdNe3Hg3R55Wea3RnJ5JHWjvnLtyRg029yNhI5YdK73G9WMo30V+Xwl4dt0AktEJ+6oXJPyqDJpemg7YNPtlQHgsgY/nx+X0p/xHrFnpMRmv3ZpX9yJeWb8OwrNNe8R6jrDCNc28BPswxE5b5nqa04sM57/so/bx9q2W3V9e0vTj5Vzco8ijiKP2m+Xw/wB80Kj8a6b0k+1xjrhkz+j1UhoM64e7kis0PaT3/mEHP1xSymj2xBeKS6dfv3DBFP8A4r2+ZrXHFjj+2TeXI99IuaeOfDjSL9vt5bppWAMhiAZficnkfIk8VdLGz8N39nHdQwQLE4yplj8s/RgDWNx60sP/ACvkW3wgjVT9etIa7kuGLSSM5zyWbJqWT06l+OhU99m6RaNorj+FbWzj/KqmnBpOkxHItIwf8qCsSsri4tphJaySI493y2Ktn8K2bTL2W202AanMr3ZUFuQp555+QIzWLNhcOilE1NL0xhvW2jOf8opY0rTv/aRf6RUaPUIxdRptVVlztKvlT6j596J5GOCM+lRX7QHYwNJ0/taxf6RS10ywXj7NH/pFPfOvQw+NUVeBRAs7TtCv0Fe/Y7UD/CX6Clk1wOetPUfANiPstsOkS/QUoW1v/wBtPpTg56V5tHc13FeDrYkW8H8g+ld5EX8q/Sl7QO9duX1puMfANkZJFCnA/KlA57DBqILiFfemWm21CFDnzB86yKZSkTW97oK92jHShh1WLd/iA0o6zb44NdyR2ibhGJ4r0qoUkfnUKLVLbcWLcUp9YtiMHGPWutHaHtm9ev0odrN2NLsGmUBnzhFPdvj8sE0ptat8hIgTz270D8TarHNLHDbqr3MQOS4ykRPw+835D40cdc7ZXFByeinajaNPKb7WbhlMvIYjLuPRV9Pj0oNdarHZqRp0AtQ3HmZzKf8Ay7fhiimrJsLS3Epmnb7znJNVxLOa+beqEmR8KoHuqBn9K9XFLkrfQ2bHw0uyK7zXO5iSoPOe5pEOnySncQ2D61YdG0iXULhltoWeKE4LY4GPU+tF9A0eS8mEhXbAPd9cetVeeMVSILA27YAsfC011GXPCgE4xyQOtSYvDTbLZoJgwmYqDj0rSZLO3s7Yskfurg1TbK6W31GW3HuwziaMfA8H9RUY55SLSwxj0V68lv8Aw5fIwTZOnMcuMrn1Ge/z6U3P4k1DUYZPt95PO8bZVvMxweO3zq1a9GLrULiC7dBZsAygwl+o4PHP0qtzaDPHYmSO0bbuG7yyS2K0QlCtmWUJ3o90rVTBNEwuLqHByu9srn51d7HxxJHci3vVQsw3JMnRx6cd6zZIo0CmOVsnqCOlTWjVYYZFI3RyeyAMcd6GXBjydgi30bhpusQX9uJY5Qy45INSvtsC8FwflWSeGLyS21pbVWPl3GQF+OOKuT297yyxnmvIz43inRRbLWdRtv8AuCvP3lbAcyCqfJFfjny8/ACk/Zb6Rc+UwNTUmAtz6xbJ7sgNNfviAnJeqg9ld78eWwPwpyDS72RsbWHxPaut+TrLaNYtz1eu/etr/NVfg0KduGYgjvmpQ8PS4/xDQ5fsOyYNLicA815+50znHHzqeqzY/pSJYppAFDFcmp7f0EjjR7YDJXr8abl0RSxAAUY4oqkYt413MWannUHktin4aOoBx6OFG3HHrXsujjPHu4o2Au0mkyEFMA85ruCOoqmqwR6WkaW3/NT5AbvGvc/PtQS4eCztT0yeBn7x6/nj/eaJ+KRL+8g5DbTEFU+nPNO+HfDp1Qm51HP2dSdsf85z+g6VTHHlo9PFxxYuTKcNNvL+IXjQymOZ1jiTHPPU/Q/nVy8OaBDpejTTyW4Nykb8kZ7DpVluGhgUQ2kKez7Kqo7+n4d69wUspFPtLICBVJZWtfRO+WwHaWlto3haCNiq7uZGXqzFST+tD9Pv9M2JHay4YDlSCOfxp7xZBqU+iwWunyRxTKScsORwB6fOq7pWi3peEPcSySbAZd2CA3w+FNBKUeVjtuPxost7cxrbOWOAByay83Uf79AHCOxQH58VpPiHSpDpZiDtkkBiPSs9vfDL2C+Ym9gDu3nkitGFx3Znyxk+grBGmpw24kZhcWrFcBsB154/CrppCp5IzzkVmNvfGG8WYMAJcN+OeR+taFaX8NrbI9zIEyOuK6aaoaH4sD+LfC1tLObuyCxyv1Torkfoaoks5tWEE/QHn1rV3urPU49lpdwzH0RwSP8A7rLvGgWK+RQoV8cj5VbBOTfFmfPBKPJD+g3LHXtOKn2lukH5/wBjW5oxbjjFYV4Fga78R2HGVWbzG/8AFf74rdIVKoGasf8AkK9xIhjuh0lduMe13ph5WwVQc09GTI21V6dzTkiJCQcDJrFxbKEUIZWwOo60/GCikOOKdRk9ogYyKYdxgc12kcKE6IOneu88HnFJhEZOZSDTLyR7zgjGa63QCRbo6ZCtkfGlCUBvaNMWSuqATOCxHanzbrsOT8c1yTrQ1HjHeeuR2rm9sYb2SO9JWROgIO0U3eTeYqiJlU/E0L0cOK+0e03FNltxJXODxmh818ocRuRgd6hXfiW2hLoCMLQTk+kB0GruCC7Aimxkcj1Wpq7oLIRQLgBT7p5AHbPx9fnVOsdYiuZ/tSb3zwcVb5ZC2nKQCCwDEHqBjpV8dxuy2OXJKIMi8xbhPNCIigZVT7Kj4nvU65uI54C0ZUqOFwaoHiibUpLptv2sWwdsqh6DsVqF4Uv10fVUjuLx5NOu22+ZKcNG/wDmzTRg3Hs2uNOy+3YaYSMkZdAdu/Hp6ULTUYLG4VcLnPJPb4/CrDrNxjTHEBAbGMDtVB06PUJJ5ClmtwXYjd5mDx68dKMYpas5SuO0Wo6hY3lk063UcmG2lUbJBoPJqESXf2WWLKsMgsvb41CcXsV2yNaW0Mg4Lli39s0M169XTZJJmbzroxgbfT447CqRg3pAfx2yA+iW+o+Ijb2gxH5m/j7i96tmv6E9zEn2csvl4GF6kVWfB07G9e5tbpEZlwySDj51eVu5LaNZLqZJHJAYqu0EZ+dWm3FpeCfC9r7Klp+n6yJDFf6bbFV924hba4+JqtftHhWK+s1VssyEtk89e9a1c30EluwBGcZrFfFV6t7ftMsiuA3loAew4z9argfLLZm9QnHHxZZP2V20bX8jk/xETj8TWrbhDFuYMeOc1kPgW5bTJprjZktgL8quc3iiZ+BGoHesXrIylmbM8JRUS1Q3aRgHnLetLurhTGcON3xqh3OtTy+7wBTH7xnd8O5+tQWOdUd7iL091bKjmSYI2OmetNDULDyA0kwB+JqjzXVwzHuvcmok8x7SEg9qKwfsDyGhLqGnxYAl3bu+elJbUdMDEeaKz7c0pXBYADnHeuMiZ5D0fYXkHu/ovq6nHb4JkTJ6DNQ73xDNuZYsEY6VT5blJP4cjFjnIPpXsl26IqRlQPXHNMsFHPIg6us3KqwJVWPQE0mbUrieNNzBcdxVXacSXQJk6VJmuDgRjOD1an9hA9wM3lz5oG1nz6ioMdrCwMkpDtnnJ4qCkrICfNPFJt5LieWRYiSAOQTinjjroXnbLPpFxb21xboiKI1bdt9avduDdFIWOXEfmO6jg1llqTCVklOwowUYHtEn0+laB4PvhPcMG/xWhzxk9+/HXr9aVQ+ST6NGObStBiW1i/6oBx6Cgep6ZBdq8PloVbsyAj6UZvpWU4qHuzya6SjdI245SSsqU+meILSHyrKa3nhX3I5GYEL/ACg80R0nUZbS18jU9Nlt2H3ol8wH8V5/KjfHevNiMORTrEmgvN5KZqfiPSLOR2i3zTH3UVCWY/TiqLHpt5qt5LqN3I8LzPuaOONpjjsML0x8TW0vbxuctz8+c16kKJyFq+N+2tLZHJ83soel6IsFnmWAseuSmCfwNGb3w/p8Nq9zbytcpENzorEsO/ug1asoy4ZR9Kaks7aYAvGCw6Meope+yvutJLwZXr/iaGG0kt7DebpxtAKkeWD3Ofyqhw2/luWcYK8nNb1qPhy1kuEu4YlFwvDeki+hHrwCD8Kyvx3oB0fVhJEpW0u/aReyv95f61qwOMfijF6lym+TZJ0mTFiuRjvmp9vM9wxjRQW7Ad6c0lLc6fbl9uCgBBFF7M2trdIkaLudTj4V5+WScnaM6g2DbeznlL+YCpXqBRFNKWG0LMWL9c07dzgQOqbQ7HJINC7rXJraMLKyvxwBUk5S6GajEky2N0zBFXA25570zDav7oAbnHypmXUbsw7m3DzE9nHpTmmX8kK48v2W4yfWqcZcbOqLHZYZIfaCHcPpXLa7wGOQT2rzUJbhwSvPHQUMGqMnsnIIoKEmgNIZllUSERKT8cU2VuZFAK+z6ilwAZKsWBP5UqWZ7cbFZinXNX/gkMpp7GX2+AvOfWlzLLHEYy6sudy4NKS5Djadwc9ea9byUI8zILDpiu5Sv5HEfCSFSZNpHPWujn8lm9r2WOc/ClR20AbZLukDDOfSnJ4YZI4k5SNR7eBk0/x6CkHtDsP3qYXnlCW+Rg4yzNn3QPrWq6bpNtptuiW8e1toXOcnHpVC8NWTy61aRRI6W1uoO3HBA7/EHOc1pc7iMgHp3oQSptmiKrSB8yeexBXBBwD6moM8DRe9x8KIQuZJkzjauSfn2pd1yB69PwqDipLka1Np8SuXFykfVh9aiNqsS9ZAB86I6nY28yMJYkb5qDVUu/D2nSFg0Cj5cUsZtaZdwvaDC6zAekgP41Ii1KNuprPdY8INFG0llJIO5UMQR8qEi0urCzhjOoyGbz1H+Ic4YHtn1xWqGLmrizO5JS4tGvG6RhlWH1pJutvfis1Vtdt1LWtw0pj5eFuW+Y9asXh3VW1OLLlRIOGX0NTnCUeyvAtMd00nAUtUDxRo417Qby1K4mGGhZhyJByp/oanwZQdqk7yjo2MgkIfxPB/A4/OnxNkJq9GMW1y8VmkDArs+6eoOeRTb31yzswJ4GBRnx5pR07xSEXPlXQ89VHRTyGA/Hn8aGFzDBIFjGSPvdarJKP1swZJNOhcU8rQDLHJ6802bhRFh13MO5FKDiGISt06fKk3LRTRrt4z3pYxTfQPonWN285xIQURePhTt5eFUQRkBU6470GtmaMvjOMdfWleZvyQ3PoaMsasLeidbahNLKxKHaO4NJa+UsT5IPzFMRuyRsYzz6U8JAwztHNTcd6QLsXLMXjLx+8h5bHSvIlkmlj3k7CMk44NMyX8EdqViU8tznvTS6pK0I2RsoHC+z1rlF+AEsrDHcFi2WA90Dio1zJ5si5bbg87q9M24MJm2ybcgAVCEluY28xZHlGNtMoN7YGwjbCMkqWZId2GfbuI+Q/CrHoiadJdJmUxkfeuEKqfxUn88VTX+1XEyxqGijZcAD1orBcpCJFEjYEQyfjS5I0hos2G0SDR4QLW3j8yVgNkZJDORnqc4Xr+FErhn+zhs7yAWPbnFD7S8S4tYJY0CGTAXd1ZQo5/SiRTeqqG4BBJ9aj2uJuWtjVuVSYxk844+n+/pSpmYkLgcHNRG2yt7PsygAfMf7AqBqGqSWkftIHccAg/qOoNSeRJUaFjtkydWbIP1oVfWzYyF/Gk2viiAsq6nCYN3AkX2hn496NtBHcRK8bB0YZDKcgikcG9ospcdSKukoPsN29arfinwz9teO908qJ4jnYeA39jV1utKy5ZeDURoZYeCCRT4srg9HTxxmDRZme1huFASdUGc9j3FIhs7Y3RuGhe3uj77xdJPiR3Px60TCAcodrd6jSrJECcbgORx0NblljPsZb0w5ZRERhjJ5i+oXFT7VYt4OPbHTPahdk7nEkHBYe0uPZPzqcHilIKOsco+4GGDV4RjHZjyQd6Kn+1a0zHp16p2tG7RFh2BGf6VQMRpIJGYyAcAela94oJl0Eyi0S7eKVD5LgHdk4+vNVX/h/TdYiLwJJp90OsR6A/FT0qeVrkZZenlJckUi5IlxHG3su3uGoixTLNtY4x934UX1jS77R75Tc2+2MHKSDlW+VQDKrsk2cyk4wOKEXSoydOmORunlZ2YGeppMiR8MnO7jGMU+sVusbkt/FHIXOQKX5fmA4kB2jdnFLf2NX2MxKY45OAVUd6bVZnG5VUA9BTdtKZTIGPsf1qQoUADdj4YrpWuxWRWHlAr5W85x8qnWpCCPcmYh02803drugDIWXcer9cV6mIl8sDC+o710m2hqJxsYGQhiHO7czA+76CoSxxKQThDu+tMtLt8xt5GeAc0Gku53fyVclgeOK6EJO1YrdMsToAm6NGYIOADyfjT9tMs8Zaewt+R7Rbdg4HdQaHx3LxAr3xgmmYZXaRsORsYHjvXKL3YYyo2bRLwNo1lcLh0aFVVlX2UYcMCewzn6UcsruO7XfCfZ5wSMZx8Kz3RbtJ9I+yXI+2SRNuW1i6j037ecdePrVv0y4Gm6M+paiQsjoCexwBwAP0FZqpm6Mk4jGoyNb3UsucBWCckYPHI+GKiSvDqSAC7RMYyGGWHOPn1pjS9TjutUXTLqPJu4muY16lHySRz3IP1A9aRqWliC+Y7UVZQ4LNncGOMDPoApwfTNHF6WMvk2PP1ckqSI8tjGs8kYJlKcM5/TFKs7q80pmktHzG2P4L8o3y9KmyZICMpjhwDyu0tnnp1J5pEqeYqbQQvQZrb7S40jMssnK2GtN1yy1ACJ//AE9x3jk4z8j3qTcWwOcLVJ1PyokA6u/UA9Pj9cD15FLsL3XbG3Dwzxyx9BBLlwBn+YYx3HHFZsnpvBsx5g/PZ4O4Co4V84xn1ojoN+uuWLT+T5MiMUkTOcMPSvb21kRWMancB0rHKM4fRrjOMtA8xRSpsfIB6gMRSoba2h9xFFB5m1IzENGsca8s7HGKTHqB2gZyfWmWWVBlCiwiVBwDxSWlQHdxu9cUDF7UW/1hbW2e4dHaNe6j8KKlJ9E2lHbC+smK80q7t5SMGNip/lIGQfrWXSII3RdgfHORRPU/Elze27w248pH9kk8kj0oMscjuoc7TnBIrZhhJL5Hl+olCUviNO4832PZZu3wqdb3HkxTEIDuUKpqDJCqy74m5jOM07bOyqUHtL1Iq8kvoguz1z5U2U2kEcgetSFlGBkpmmDCqtv++2FRT1pJ8xSVKcg0klYKHI45WjYzEHacU754Qc96gmd/MKSemSTTE8vnFdrHI/KucHI4fuNkuQS20HJApmGONX/gHLgZ3Ht8qSkcrS7F4J6n4U4T9llLAHcoyppq4qkKyRGPKlSS7j8xR9wetEL0wNtuYg0LnGNv9agbJbuBXb3m7V0J8yNoLhygX3OKR72wkiznRrhZ97CSJ9xO3GRWhW/iCy8SWCxSGaa4iQeZbhgjSY6sPgOpxzWZxoRDKIv8TOM+lSLG4m0+4iubaTZPCwYMvrSzgp7Kwm4mj/s2le41XWp3YMAsSgKoAXG4BR8AAKNuZtWEgcpHB5rDuCNpPP5Gh37OBG9nc3iJGrXdyWcRjC5AGcegzmj9nbedaTseQ8kjr8DuJH6mrQSo6yHJDBEWE0q+amcY67R046/D8KhtI0iB4rK42CPcSx2gfPiid/mVIZx70gCPg9cDPP509GwXS5AF53bfw61VRFsqE8Oxp8ohxG20IMAbWBI79ip/AmjKQoVVFb0K/EYqPagST3CuPZMvH+kKf0qbpqk24jkwXhJjJ9cHH9qLiPGTJHhS0FpqeoRf9KXZOnz5Bx9AasF8m6M9mHQihmmv5eoxn+ZGT9D/AEoheuUAYGpSSaaZog25JorOp6Wmp4E00yBe0bAD9KZtfDlpEhBaZ8fzMP7UdvAsEQ4O7G7A+NI05gzpvPfOfSorDBfRteSXG0Qr7QLf90zJHAonKbhk85HT8M9ap2rRTL4ZuSiG4lVB5rAYRVDDJUeg9a0+X24llboyMGFDLWztY4wkcK7Su0g85X0NO8KbVIg8rcGmYcojC7tg609DJHud2I246GpvizRZtD1ma2hXNs6+ZbsT1U9vmOn/AO0DjjkiAV0yT3HOBXOPk8160OzLHIHePKr6V5aqQ2UOCR1pm2iaVZSGAjQZz61IsYitrI4zlWGT8DR/FHIUtu4uiwYlMb+aacylzmXBz0onFG6w7m4JB247CmlFuR7WSe5FT5+RkgJOvsNISSxbqTS4DuIQgYrq6tC/EmLumMd5FtPQ0q99mPcOvNdXUn2gMc0lmnCJIxIBI4pi+9i4dF6IfZrq6kX5s4Kj/wBRZIrgDHdeDTVqdksq4BG0dRXtdUb0xvo0/wDZ1GqeGINvd5j/APKrUn8OwTZxhP6V1dWqI/gC6e7Ot/G3KrIjr8CRz+lTU502Unr5o/SurqshQSnFw4HTINPr7F5lf+ogZvnXV1FhiTixQxuvvKwIorqHvKO3NdXVCXZsx/RD1ngSfAAfkKgW5O0c11dQfZrx/wCsNRHOl89t1QbUnylPxxXV1Uh2ZX0yuftJgjk8Oid1zJBMmwntuOCKyKGd0um2kDFdXUszFk7H7v8AhQqqcB2OfjSbWR49IumVjkuoNdXUi/EBOQH7AZA7bsY69qa3HscV1dSxW2Ul9H//2Q==",
              ),
                    ),
                    title: Text("Ambili"),
                    subtitle: Text("Yesterday, 6:00 PM"),
                    trailing: Icon(Icons.video_call),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}