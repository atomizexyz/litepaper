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

Since the birth of Bitcoin in 2009, counterparties have convinced investors to give them resource in exchange for the promise of secured funds and yield. Time and time again, we've seen these centralized counterparties fail. Failure modes include hacks, over leverage, insider trading, poor accounting, and opaque communication. Crypto was invented to get rid of middle men and remove counterparty risk. The FENIX protocol uses open source code on public blockchains to provide a [hyperstructure](https://jacob.energy/hyperstructures.html) that rewards crypto stakers for delayed gratification.

## Vision

FENIX is designed to reward crypto community members who believe in cryptos first principles of self-custody, transparency, trust through consensus, and permissionless value exchange without counterparty risk. FENIX's value is derived from the skills of the community members who have the freedom to assemble and create value for FENIX. Since no one party will own an outsized amount of the initial supply, it encourages the entire community to cooperate and coordinate. FENIX is minted from the ashes of burnt XEN. XEN is the fastest growing cross-chain protocol with a vision of onboarding as many users into crypto as possible.

## Features

**Equity**

Having an equitable initial investment distribution is crucial for ensuring that all stakeholders have an equal opportunity to participate and benefit from a project or venture. When investments are distributed fairly, it can help to reduce conflicts and promote a sense of shared ownership and responsibility. This can foster a more collaborative and inclusive environment, which is essential for the success of any project. An equitable investment distribution can also help to promote trust and transparency, as all parties are treated fairly and with respect. Overall, an equitable initial investment distribution is an essential component of a well-functioning and sustainable project or venture.

**Time In Market**

Having a long-term investment time horizon can be extremely beneficial for investors. This is because it allows for a more measured and disciplined approach to investing, as investors can focus on the long-term growth potential of their investments rather than being swayed by short-term market fluctuations. In addition, a long-term investment time horizon can help investors to weather economic downturns and market volatility, as they can hold onto their investments for a longer period of time until conditions improve. This can help to reduce the overall risk of investing and increase the likelihood of achieving long-term financial goals. Furthermore, a long-term investment time horizon can allow investors to take advantage of the power of compound growth, as their investments have more time to grow and accrue returns. Overall, having a long-term investment time horizon can be a key factor in building wealth and achieving financial success.

**Penalty Redistribution**

A system that redistributes penalties from investors who fulfill their commitments to those who do not can be extremely valuable in promoting accountability and fairness in the investment process. Such a system can help to discourage investors from making commitments that they do not intend to fulfill, as they will be held financially responsible for their actions. This can help to build trust and confidence in the investment process, as investors know that they will be held accountable for their commitments. In addition, a system that redistributes penalties can help to level the playing field for all investors, as those who fulfill their commitments are not unfairly penalized while those who do not are not rewarded. Overall, a system that redistributes penalties can be a valuable tool in promoting integrity and fairness in the investment process.

## Principles

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
<td>Proof of Wait</td>
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
    Started->>Ended: End - No Penalty
    Started->>Deferred: Defer End - No Penalty
    Started->>Ended: End Late - Penalty


    Deferred->>FENIX: Mint
    Ended->>FENIX: Mint
```

## Tokenomics

<p align="center">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./img/stake-dark.svg">
  <img alt="fenix" src="./img/stake-light.svg">
</picture>
</p>

- ![#F6B81A](https://via.placeholder.com/15/F6B81A/F6B81A.png) Stake & Early End Penalty Period
- ![#F9386D](https://via.placeholder.com/15/F9386D/F9386D.png) Late End Penalty Period

#### Get Equity Tokens

FENIX uses the proof-of-burn function from XEN. To mint FENIX, burn XEN, the amount burned per address will determine the base FENIX supply which can be used for staking.

$$
base=\left(BurnedXEN\right)
$$

#### Stake Start

The stake start uses Time and Size bonus functions to calculate your equity stake in the pool (shares).

**Time Bonus:** The amplification a base stake's bonus compounding at 20% APY. The duration of a stake term is uncapped but there are penalties for ending early and ending late.

$$
\tau=base* \left(1 + 0.2 \right)^\frac{days}{365 days}
$$

**Size Bonus:** The amplification of a base stake's bonus using the natural log of the base rate. The size of a stake is uncapped but consolidating a stake yields more rewards.

$$
\sigma=ln(base)
$$

**Total Bonus:** The sum of the time and size bonus calculated upon starting a stake.

$$
\beta = \tau + \sigma
$$

**Shares:** The sum of the base FENIX plus the bonus FENIX

$$
shares = base + \beta
$$

#### Stake End

Ending your stake exists along two continuous functions. One function increases the percent of your stake before your target date and the other decreased the percent of your stake after your target date.

End a stake distributes the tokens into owner address address, while redistributing any penalties to the staking pool. This function can only be triggered by the owner of the wallet.

**End Early:** Ending a stake prematurely results in a penalty to the stake return. The longer the duration of a term is completed, the lower the penalty that is applied to that term. Lower penalties result in higher rewards.

$$
\epsilon=\left(shares\right) * \left(1\dfrac{blockTs - stakeTs}{term}\right)^2
$$

**End Late:** Ending a stake that is overdue results in penalties. The stake is penalized for 180 days until nothing is left. The penalty function is graceful that does not redistribute over 50% of your stake until day 143.

$$
\lambda=\left(shares\right) * 1-\left(\dfrac{lateDays}{180 days}\right)^3
$$

#### Defer

Acknowledge that the owner still has access but is not yet ready to receive tokens. This can be triggered by only once the stake term is completed.

## Glossary

**Terms**

- _base_ — The base FENIX token used in a stake
- _𝞃_ — (Tau/Time Bonus) The time bonus calculating for a stake. This bonus rewards a staker the longer longer delay gratification by issuing a bonus of `20%` APY every year.
- _𝛔_ — (Sigma/Size Bonus) The size bonus calculation for a stake. This bonus rewards a staker more tokens based on the amount of tokens which are staked.
- _β_ — (Beta/Total Bonus) The total bonus which is the sum of the time bonus and the size bonus.
- _𝝴_ — (Epsilon, Early Penalty) The penalty for prematurely ending a stake. The penalty is costs the staker the square of a served term.
- **_𝝺_** — (Lamda/Late Penalty) The penalty window for ending a stake. A staker will lose a percentage of total earnings over the course of 180 days. At the end of 180 day, the stake reward will be 0.
