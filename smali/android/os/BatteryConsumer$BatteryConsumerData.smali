# classes3.dex

.class Landroid/os/BatteryConsumer$BatteryConsumerData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerData"
.end annotation


# instance fields
.field public final layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final mCursorRow:I

.field private final mCursorWindow:Landroid/database/CursorWindow;


# direct methods
.method constructor <init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iput p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    iput-object p3, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    return-void
.end method

.method static create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 5

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate BatteryConsumerData: too many UIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryConsumer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_23
    new-instance v1, Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {v1, p0, v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    return-object v1
.end method


# virtual methods
.method getDouble(I)D
    .registers 4

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_8
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, v0, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method getInt(I)I
    .registers 4

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, v0, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_6

    return-object v0

    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_12

    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :cond_12
    iget-object v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v2, v2, p1

    array-length v3, v2

    :goto_19
    if-ge v1, v3, :cond_25

    aget-object v4, v2, v1

    iget v5, v4, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v5, p2, :cond_22

    return-object v4

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_25
    return-object v0
.end method

.method getKeyOrThrow(II)Landroid/os/BatteryConsumer$Key;
    .registers 7

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-nez v0, :cond_42

    const-string v1, "Unsupported power component ID: "

    if-nez p2, :cond_21

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " process state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    return-object v0
.end method

.method public getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 3

    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getLong(I)J
    .registers 4

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_8
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, v0, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method getString(I)Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, v0, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method putDouble(ID)V
    .registers 6

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p2, p3, v0, p1}, Landroid/database/CursorWindow;->putDouble(DII)Z

    return-void
.end method

.method putInt(II)V
    .registers 7

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    return-void
.end method

.method putLong(IJ)V
    .registers 6

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p2, p3, v0, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    return-void
.end method

.method putString(ILjava/lang/String;)V
    .registers 5

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p2, v0, p1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    return-void
.end method
