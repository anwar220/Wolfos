# classes.dex

.class public final Landroid/app/admin/SecurityLog$SecurityEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEvent:Landroid/util/EventLog$Event;

.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent$1;

    invoke-direct {v0}, Landroid/app/admin/SecurityLog$SecurityEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {p3}, Landroid/util/EventLog$Event;->fromBytes([B)Landroid/util/EventLog$Event;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-void
.end method

.method private getSuccess()Z
    .registers 6

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_c

    goto :goto_25

    :cond_c
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_24

    aget-object v3, v2, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_24

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_24

    move v1, v4

    :cond_24
    return v1

    :cond_25
    :goto_25
    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    iget-object v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v4, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v3, v4}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-wide v3, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    iget-wide v5, v2, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .registers 4

    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    iget-object v1, p1, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0, v1}, Landroid/util/EventLog$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-wide v0
.end method

.method public getIntegerData(I)I
    .registers 3

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .registers 5

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1e

    :pswitch_a  #0x33465, 0x33466
    return v3

    :pswitch_b  #0x33471
    return v1

    :pswitch_c  #0x3346e, 0x3346f
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    return v2

    :pswitch_14  #0x3345f, 0x33467, 0x33470
    return v2

    :pswitch_15  #0x33457, 0x33468, 0x33469, 0x3346a, 0x3346d
    invoke-direct {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v3

    :cond_1c
    return v1

    :pswitch_1d  #0x33451, 0x33452, 0x33453, 0x33454, 0x33455, 0x33456, 0x33458, 0x33459, 0x3345a, 0x3345b, 0x3345c, 0x3345d, 0x3345e, 0x33460, 0x33461, 0x33462, 0x33463, 0x33464, 0x3346b, 0x3346c, 0x33472, 0x33473, 0x33474
    return v3

    :pswitch_data_1e
    .packed-switch 0x33451
        :pswitch_1d  #00033451
        :pswitch_1d  #00033452
        :pswitch_1d  #00033453
        :pswitch_1d  #00033454
        :pswitch_1d  #00033455
        :pswitch_1d  #00033456
        :pswitch_15  #00033457
        :pswitch_1d  #00033458
        :pswitch_1d  #00033459
        :pswitch_1d  #0003345a
        :pswitch_1d  #0003345b
        :pswitch_1d  #0003345c
        :pswitch_1d  #0003345d
        :pswitch_1d  #0003345e
        :pswitch_14  #0003345f
        :pswitch_1d  #00033460
        :pswitch_1d  #00033461
        :pswitch_1d  #00033462
        :pswitch_1d  #00033463
        :pswitch_1d  #00033464
        :pswitch_a  #00033465
        :pswitch_a  #00033466
        :pswitch_14  #00033467
        :pswitch_15  #00033468
        :pswitch_15  #00033469
        :pswitch_15  #0003346a
        :pswitch_1d  #0003346b
        :pswitch_1d  #0003346c
        :pswitch_15  #0003346d
        :pswitch_c  #0003346e
        :pswitch_c  #0003346f
        :pswitch_14  #00033470
        :pswitch_b  #00033471
        :pswitch_1d  #00033472
        :pswitch_1d  #00033473
        :pswitch_1d  #00033474
    .end packed-switch
.end method

.method public getStringData(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .registers 3

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public redact(I)Landroid/app/admin/SecurityLog$SecurityEvent;
    .registers 11

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_7e

    const/16 v0, -0x2710

    goto :goto_74

    :sswitch_f
    :try_start_f
    invoke-virtual {p0, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_74

    :catch_14
    move-exception v0

    return-object v4

    :sswitch_16
    :try_start_16
    invoke-virtual {p0, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_74

    :catch_1f
    move-exception v0

    return-object v4

    :sswitch_21
    :try_start_21
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_74

    :catch_26
    move-exception v0

    return-object v4

    :sswitch_28
    :try_start_28
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_74

    :catch_31
    move-exception v0

    return-object v4

    :sswitch_33
    const/4 v0, 0x0

    :try_start_34
    invoke-virtual {p0, v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getStringData(I)Ljava/lang/String;

    move-result-object v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_53

    nop

    new-instance v5, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v6

    iget-object v8, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v1, v3, v2

    invoke-virtual {v8, v3}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v0

    invoke-direct {v5, v6, v7, v0}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object v5

    :catch_53
    move-exception v0

    return-object v4

    :sswitch_55
    :try_start_55
    invoke-virtual {p0, v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getIntegerData(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_74

    :catch_5e
    move-exception v0

    return-object v4

    :sswitch_60
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v4, v1}, Landroid/util/EventLog$Event;->withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>(J[B)V

    return-object v0

    :goto_74
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_7c

    if-ne p1, v0, :cond_7b

    goto :goto_7c

    :cond_7b
    return-object v4

    :cond_7c
    :goto_7c
    return-object p0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x33452 -> :sswitch_60
        0x33455 -> :sswitch_55
        0x3345d -> :sswitch_33
        0x3345e -> :sswitch_33
        0x33468 -> :sswitch_28
        0x33469 -> :sswitch_28
        0x3346a -> :sswitch_28
        0x3346d -> :sswitch_21
        0x3346e -> :sswitch_21
        0x33470 -> :sswitch_16
        0x33474 -> :sswitch_f
    .end sparse-switch
.end method

.method public setId(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/admin/SecurityLog$SecurityEvent;->mEvent:Landroid/util/EventLog$Event;

    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
