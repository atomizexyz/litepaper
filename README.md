<p align="center">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./img/fenix-dark.svg">
  <img alt="fenix" src="./img/fenix-light.svg">
</picture>
</p>

<p align="center">
FENIX pays you to hold your own crypto
</p>

## Introduction

Since the birth of Bitcoin in 2009, counterparties have convinced investors to give them resources in exchange for the promise of secured funds and yield. Time and time again, we've seen these centralized counterparties fail. Failure modes include hacks, over leverage, insider trading, poor accounting, fraud, and opaque communication. Crypto was invented to get rid of middle men and remove counterparty risk. The FENIX protocol uses open source code on public blockchains to provide a [hyperstructure](https://jacob.energy/hyperstructures.html) that rewards crypto stakers for delayed gratification.

## Vision

FENIX is designed to reward crypto community members who believe in the crypto first principles of self-custody, transparency, trust through consensus, and permissionless value exchange without counterparty risk. FENIX's value is derived from the skills of the community members who have the freedom to assemble and create value for FENIX. Since no one party will own an outsized amount of the initial supply, it encourages the entire community to cooperate and coordinate. The FENIX token is minted from the ashes of burned XEN. XEN is the fastest growing cross-chain protocol with an initial vision of onboarding 100 million users into crypto.

## Features

**Equity**

Having an equitable initial investment distribution is crucial for ensuring that all stakeholders have an equal opportunity to participate and benefit from a project or venture. When investments are distributed fairly, it can help to reduce conflicts and promote a sense of shared ownership and responsibility. This can foster a more collaborative and inclusive environment, which is essential for the success of any project. An equitable investment distribution can also help to promote trust and transparency, as all parties are treated fairly and with respect. Overall, an equitable initial investment distribution is an essential component of a well-functioning and sustainable project or venture.

**Time In Market**

Having a long-term investment time horizon can be extremely beneficial for investors. This is because it allows for a more measured and disciplined approach to investing, as investors can focus on the long-term growth potential of their investments rather than being swayed by short-term market fluctuations. In addition, a long-term investment time horizon can help investors to weather economic downturns and market volatility, as they can hold onto their investments for a longer period of time until conditions improve. This can help to reduce the overall risk of investing and increase the likelihood of achieving long-term financial goals. Furthermore, a long-term investment time horizon can allow investors to take advantage of the power of compound growth, as their investments have more time to grow and accrue returns. Overall, having a long-term investment time horizon can be a key factor in building wealth and achieving financial success.

**Penalty Redistribution**

A system that redistributes penalties from investors who do not fulfill their commitments to those who do can be extremely valuable in promoting accountability and fairness in the investment process. Such a system can help to discourage investors from making commitments that they do not intend to fulfill, as they will be held financially responsible for their actions. This can help to build trust and confidence in the investment process, as investors know that they will be held accountable for their commitments. In addition, a system that redistributes penalties can help to level the playing field for all investors, as those who fulfill their commitments are not unfairly penalized while those who do not are not rewarded. Overall, a system that redistributes penalties can be a valuable tool in promoting integrity and fairness in the investment process.

## FENIX Principles

<table>
<tr>
<td>Simple</td>
<td>No Back Doors</td>
<td>Users Mint Their Equity</td>
</tr>
<tr>
<td>No Investor Allocation</td>
<td>No Team Allocation</td>
<td>Fair Launch</td>
</tr>
<tr>
<td>No Pre-Mine</td>
<td>No Origin Address</td>
<td>No Maximum Cap</td>
</tr>
<tr>
<td>Proof of Participation</td>
<td>Immutable</td>
<td>No Admin Keys</td>
</tr>
<tr>
<td>Starts at Zero Supply</td>
<td>No Management Team</td>
<td>Hyperstructure</td>
</tr>
<tr>
<td>No Sacrifice</td>
<td>No Initial Coin Offering</td>
<td></td>
</tr>
</table>

<div style="page-break-after: always;"></div>

## Process

```mermaid
sequenceDiagram
  participant XEN
  participant FENIX
  participant Started
  participant Ended
  participant Deferred
  XEN->>FENIX: Burn XEN
  FENIX->>Started: Start Stake

  Started->>Ended: End Early - Penalty
  Started->>Ended: End On Time - No Penalty
  Started->>Ended: End Late - Penalty
  Started->>Deferred: Defer - No Penalty

  Deferred->>FENIX: Mint
  Ended->>FENIX: Mint
```

## Tokenomics

XEN to FENIX Ratio: `10_000`:`1`

### Burn

FENIX rises from the ashes of burned XEN. 10,000 XEN burned equals 1 FENIX.

$$
burnRatio = 10,000 XEN : 1FENIX
$$

When any FENIX user burns XEN they will be rewarded in accordance with the `burnRatio`

$$
\frac{XEN}{10,000} = FENIX
$$

> **_Note:_** Fixed Burn Ratio
>
> The burn ratio is fixed. Since XEN is disinflationary, it will become increasingly difficult to burn XEN for FENIX.

### Pools

#### Adoption Reward Pool

FENIX has a Adoption Reward for stakers that is created every time someone burns XEN to create FENIX. Each XEN Burn generates an original FENIX mint and a FENIX copy mint. The original FENIX mint goes to the staker's wallet and the FENIX copy mint goes to the reward pool.

```mermaid
flowchart LR
  l(Launch)-->|3 week cooldown|ab(Adoption Reward Active)
  b(Burn XEN)-->|FENIX copy mint|ab
  b-->|FENIX mint|s(Staker Wallet)
  ab-->f(Flush Reward Pool Into Equity Pool)
  f-->|13 week cooldown|ab
```

> **_Note:_** Payday Pool Party
>
> Every 13 weeks FENIX has a Payday Pool Party. This event is triggered by any on-chain contract (user, bot) and can flush the Reward Pool in the Equity Pool. This inflationary event rewards stakers in direct proportion to their shares of the Equity Pool.

<div style="page-break-after: always;"></div>

#### Equity Pool

FENIX manages inflation through an equity pool. This allows the inflation to be added and removed from the pool while distributing equity to stakers in a gas efficient way. When users start stakes, they increase the size of the pool and when they end stakes, they reduce the size of the pool. Since the size of the pool is dynamic, it does not require any additional accounting other than knowing the stakers equity position.

1. Three addresses stake 100 FENIX. The Equity Pool is 300 FENIX.

```mermaid
pie showData
    "fenexian-one.eth" : 100
    "fenexian-two.eth" : 100
    "fenexian-ten.eth" : 100
```

2. New 300 FENIX in new inflation is added to the Equity Pool (This could be from new stakers or Adoption Reward). The new Equity Pool total is 600 FENIX.

```mermaid
pie showData
    "fenexian-one.eth" : 200
    "fenexian-two.eth" : 200
    "fenexian-ten.eth" : 200
```

3. `fenexian-ten.eth` ends their Stake which removes their supply from the Equity Pool. `fenexian-ten.eth` mints 200 FENIX. The new Equity Pool total is 400 FENIX.

```mermaid
pie showData
    "fenexian-one.eth" : 200
    "fenexian-two.eth" : 200
```

### Staking

<p align="center">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./img/stake-dark.svg">
  <img alt="fenix" src="./img/stake-light.svg">
</picture>
</p>

- ![#F6B81A](https://via.placeholder.com/15/F6B81A/F6B81A.png) Stake & Early End Penalty Period - This time is between 0% and 100% of your stake term. The stake term can be 1 day to 7665 days (21 years). Your stake will break even around 71% of your stake term completion.
- ![#F9386D](https://via.placeholder.com/15/F9386D/F9386D.png) Late End Penalty Period - This time frame is between 0 days and 180 days after your stake matures. Your late stakes break even if you end sooner than around 143 days from your stake maturity.

#### Inflation Rate

FENIX has a fixed rate of inflation that is generated by stakers and paid to stakers. The supply of FENIX is uncapped. Outside of the Adoption Rewards, the inflation is fixed there are no other ways to produce FENIX. FENIX's inflation rate approximates to ϕ, the Golden Ratio.

$$
inflationRate = 1.618033988749894848
$$

> **_Note:_** Equity Pool
>
> Inflation is injected into the Equity Pool as soon as the stake starts. The only way to capture the return is for the staker to wait until their specified stake term and end the stake on the selected day.

#### Stake Start

The stake start uses Time and Size bonus functions to calculate your equity stake in the pool (shares).

##### Time Bonus (_𝞃_):

The amplification of your bonus grows exponentially with your stake duration. The duration of a stake term is capped at 7665 days (21 years) but there are penalties for ending early and ending late.

$$
\tau=1 + (\dfrac{term}{7665})
$$

##### Size Bonus (_𝛔_):

The amplification of a base stake's bonus is based on how much you stake. The size of a stake is capped by your wallet supply. The larger your stake, the larger your bonus.

$$
\sigma=1 - (\dfrac{1}{fenix})
$$

##### Total Bonus (_β_):

The sum of the time and size bonus calculated upon starting a stake. This total bonus generates a compound growth curve rewarding larger and longer stakes.

$$
\beta = \sigma * e^{(\tau)}
$$

##### Shares:

Your shares are your total bonus divided by your shareRate. The shares represent your equity in the staking pool.

$$
shares = \frac{\beta}{shareRate}
$$

> **_Note:_** Share Rate
>
> When a stake is deferred or ended, the FENIX calculates the inflation paid to the owner. If the owner has a higher gain than the maximum return on investment ever received, the `shareRate` is updated to reflect the highest possible return. This share rate ratchet mechanism ensures that later stakers can _never_ get a better deal for the same economic energy staked into the contract.

#### Stake Defer

Acknowledge that the owner still has access but is not yet ready to receive tokens. Early deferral can be trigger by the owner of the stake. Late deferral can be triggered by any smart contract user.

#### Stake End

Ending your stake exists along two continuous functions. One function increases the percent of your stake before your target date and the other decreases the percent of your stake after your target date.

Ending a stake distributes the tokens into an owner's address, while redistributing any penalties to the staking pool. This function can only be triggered by the owner of the wallet.

##### End Early (_𝝴_):

Ending a stake prematurely results in a penalty to the stake return. The longer the duration of a term is completed, the lower the penalty that is applied to that term. Lower penalties result in higher rewards.

$$
\epsilon=\left(\dfrac{blockTs - stakeTs}{term}\right)^2
$$

##### End Late (_𝝺_):

Ending a stake that is overdue results in penalties. The stake is penalized for 180 days until nothing is left. The penalty function is graceful and does not redistribute over 50% of your stake until day 143.

$$
\lambda=1 - \left(\dfrac{lateDays}{180 days}\right)^3
$$

## Glossary

**Terms**

- **Equity Pool** — This is the pool that holds the future supply of FENIX that gets paid to stakers
- **Reward Pool** — This is the pool that holds the copy of all minted FENIX. This pool can be flushed to the Equity Pool every 13 weeks.
- **_𝞃_** — (Tau/Time Bonus) The time bonus calculation for a stake. This bonus rewards a staker the longer delay gratification.
- **_𝛔_** — (Sigma/Size Bonus) The size bonus calculation for a stake. This bonus rewards a staker more tokens based on the amount of tokens which are staked.
- **_β_** — (Beta/Total Bonus) The total bonus which is the sum of the time bonus and the size bonus.
- **_𝝴_** — (Epsilon/Early Penalty) The penalty for prematurely ending a stake. The penalty is costs the staker the square of a served term.
- **_𝝺_** — (Lamda/Late Penalty) The penalty window for ending a stake. A staker will lose a percentage of total earnings over the course of 180 days. At the end of 180 day, the stake reward will be 0.

## Acknowledgements

- **Bitcoin (Jan 8, 2009)** — Censorship resistant zero counter party risk value storage and transfer
  - Links: [Source Code](https://github.com/bitcoin/bitcoin) • [Website](ttps://bitcoin.org)
- **Uniswap V1 (Nov 2, 2018)** — Equity based liquidity pool

  - Links: [Source Code](https://github.com/Uniswap/v1-contracts) • [Website](https://uniswap.org) • [Contract](https://etherscan.io/token/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984)
  - Influential Concepts:
    - Liquidity Pools - [Equity Pool](#equity-pool)

- **Cereneum (Jun 6, 2019)** — Time-based interest-bearing Cryptographic Certificate of Interest

  - Links: [Source Code](https://github.com/Cereneum/Cereneum) • [Website](https://web.archive.org/web/20190622004643/https://www.cereneum.com/) • [Contract](https://etherscan.io/token/0xd9D4A7CA154fe137c808F7EEDBe24b639B7AF5a6)
  - Influential Concepts:
    - Staking Longer Pays More - [Time Bonus](#size-bonus-𝛔)
    - EndStakeForAFriend - [Defer](#stake-defer)
    - Robin Hood Bonus - [Adoption Reward](#adoption-reward-pool)
    - Early Unstake Penalty - [End Early](#end-early-𝝴)
    - Late Unstake Penalty - [End Late](#end-late-𝝺)

- **HEX (Dec 2, 2019)** — Share rate ratcheting increasing the cost basis for later stakers

  - Links: [Source Code](https://github.com/BitcoinHEX/contract) • [Website](https://hex.com) • [Contract](https://etherscan.io/token/0x2b591e99afE9f32eAA6214f7B7629768c40Eeb39)
  - Influential Concepts:
    - Bigger Pays Better - [Size Bonus](#size-bonus-𝛔)
    - T-Shares - [Shares](#shares)

- **XEN Crypto (Oct 8, 2022)** — Cross-chain protocol launch
  - Links: [Source Code](https://github.com/FairCrypto/XEN-crypto) • [Website](https://faircrypto.org) • [Contract](https://etherscan.io/token/0x06450dEe7FD2Fb8E39061434BAbCFC05599a6Fb8)
  - Influential Concepts:
    - First Principles - [First Principles](#fenix-principles)
    - Proof of Burn - [Burn](#shares)
