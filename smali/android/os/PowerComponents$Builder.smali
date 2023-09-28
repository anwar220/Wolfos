# classes3.dex

.class final Landroid/os/PowerComponents$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final POWER_MODEL_UNINITIALIZED:B = -0x1t


# instance fields
.field private final mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_28

    aget-object v4, v0, v3

    array-length v5, v4

    move v6, v2

    :goto_12
    if-ge v6, v5, :cond_25

    aget-object v7, v4, v6

    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_22

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_28
    return-void
.end method

.method private addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 15

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iget-object v1, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ne v0, v1, :cond_e3

    const/16 v0, 0x11

    :goto_e
    if-ltz v0, :cond_a1

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v1, v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_9d

    aget-object v5, v1, v4

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v7, v7, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v7, v7, v0

    array-length v8, v7

    move v9, v3

    :goto_28
    if-ge v9, v8, :cond_37

    aget-object v10, v7, v9

    invoke-virtual {v10, v5}, Landroid/os/BatteryConsumer$Key;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    move-object v6, v10

    goto :goto_37

    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_37
    :goto_37
    if-nez v6, :cond_3a

    goto :goto_99

    :cond_3a
    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    iget v7, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6c

    goto :goto_99

    :cond_6c
    const/4 v7, 0x0

    iget v9, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    if-ne v9, v8, :cond_73

    const/4 v7, 0x1

    goto :goto_90

    :cond_73
    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v9

    iget v10, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {p1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v10

    if-ne v9, v8, :cond_8b

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v11, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v11, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    goto :goto_90

    :cond_8b
    if-eq v9, v10, :cond_90

    if-eq v10, v8, :cond_90

    const/4 v7, 0x1

    :cond_90
    :goto_90
    if-eqz v7, :cond_99

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    :cond_9d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_e

    :cond_a1
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_a9
    if-ltz v0, :cond_e2

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v1, v0

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v3, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v3, v0

    iget-object v4, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v5, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a9

    :cond_e2
    return-void

    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of custom power components does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V
    .registers 3

    iget-object v0, p1, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    return-void
.end method

.method public addPowerAndDuration(Landroid/os/PowerComponents;)V
    .registers 3

    invoke-static {p1}, Landroid/os/PowerComponents;->-$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    return-void
.end method

.method public build()Landroid/os/PowerComponents;
    .registers 12

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    array-length v5, v4

    move v6, v2

    :goto_1c
    if-ge v6, v5, :cond_39

    aget-object v7, v4, v6

    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_36

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_36

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_3c
    new-instance v0, Landroid/os/PowerComponents;

    invoke-direct {v0, p0}, Landroid/os/PowerComponents;-><init>(Landroid/os/PowerComponents$Builder;)V

    return-object v0
.end method

.method public getTotalPower()D
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x12

    if-ge v2, v3, :cond_18

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeyOrThrow(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    const/4 v2, 0x0

    :goto_19
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v2, v3, :cond_30

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_30
    return-wide v0
.end method

.method public setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;
    .registers 7

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1, p4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_13
    return-object p0
.end method

.method public setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;
    .registers 8

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    return-object p0

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;
    .registers 8

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-object p0

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .registers 6

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-object p0
.end method
