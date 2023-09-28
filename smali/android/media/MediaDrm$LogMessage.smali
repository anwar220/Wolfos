# classes2.dex

.class public final Landroid/media/MediaDrm$LogMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogMessage"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final priority:I

.field private final timestampMillis:J


# direct methods
.method private constructor <init>(JILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    const/4 v0, 0x2

    if-lt p3, v0, :cond_10

    const/4 v0, 0x7

    if-gt p3, v0, :cond_10

    iput p3, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    iput-object p4, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid log priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private logPriorityChar()C
    .registers 2

    iget v0, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    packed-switch v0, :pswitch_data_1a

    const/16 v0, 0x55

    return v0

    :pswitch_8  #0x7
    const/16 v0, 0x46

    return v0

    :pswitch_b  #0x6
    const/16 v0, 0x45

    return v0

    :pswitch_e  #0x5
    const/16 v0, 0x57

    return v0

    :pswitch_11  #0x4
    const/16 v0, 0x49

    return v0

    :pswitch_14  #0x3
    const/16 v0, 0x44

    return v0

    :pswitch_17  #0x2
    const/16 v0, 0x56

    return v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    iget v0, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    return v0
.end method

.method public final getTimestampMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Landroid/media/MediaDrm$LogMessage;->logPriorityChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "LogMessage{%s %c %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
