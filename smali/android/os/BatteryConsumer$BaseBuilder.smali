# classes3.dex

.class public abstract Landroid/os/BatteryConsumer$BaseBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

.field protected final mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;


# direct methods
.method public constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    int-to-long v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    new-instance v0, Landroid/os/PowerComponents$Builder;

    invoke-direct {v0, p1}, Landroid/os/PowerComponents$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    return-void
.end method


# virtual methods
.method public getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 4

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 3

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPower()D
    .registers 3

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "DI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "J)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method
