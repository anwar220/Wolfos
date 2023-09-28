# classes3.dex

.class public final Landroid/os/UidBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/UidBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_UNINITIALIZED:Ljava/lang/String; = ""


# instance fields
.field private final mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

.field private mExcludeFromBatteryUsageStats:Z

.field private final mIsVirtualUid:Z

.field private mPackageWithHighestDrain:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;)V
    .registers 4

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V

    const-string v1, ""

    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    iput p3, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    const/16 v1, 0x442

    if-ne p3, v1, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    int-to-long v1, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-void
.end method


# virtual methods
.method public add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v1, p1, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, v1}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents;)V

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_34

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    goto :goto_42

    :cond_34
    nop

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    :cond_42
    :goto_42
    return-object p0
.end method

.method public build()Landroid/os/UidBatteryConsumer;
    .registers 5

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    if-ne v0, v2, :cond_9

    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putString(ILjava/lang/String;)V

    :cond_15
    new-instance v0, Landroid/os/UidBatteryConsumer;

    invoke-direct {v0, p0, v1}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/UidBatteryConsumer-IA;)V

    return-object v0
.end method

.method public excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return-object p0
.end method

.method public getBatteryStatsUid()Landroid/os/BatteryStats$Uid;
    .registers 3

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UidBatteryConsumer.Builder was initialized without a BatteryStats.Uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 2

    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTotalPower()D
    .registers 3

    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    return v0
.end method

.method public isExcludedFromBatteryUsageStats()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return v0
.end method

.method public isVirtualUid()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    return v0
.end method

.method public bridge synthetic setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7

    packed-switch p1, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x1
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    goto :goto_2a

    :pswitch_23  #0x0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    nop

    :goto_2a
    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method

.method public bridge synthetic setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
