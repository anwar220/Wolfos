# classes3.dex

.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final mDurationColumnIndex:I

.field final mPowerColumnIndex:I

.field final mPowerModelColumnIndex:I

.field private mShortString:Ljava/lang/String;

.field public final powerComponent:I

.field public final processState:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iput p3, p0, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    iput p4, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/os/BatteryConsumer$Key-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$Key;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-ne v1, v2, :cond_11

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v1, :cond_24

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    :cond_2a
    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    return-object v0
.end method
