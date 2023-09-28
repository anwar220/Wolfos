# classes4.dex

.class public Lcom/android/net/module/util/DnsPacket$DnsRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsRecord"
.end annotation


# static fields
.field private static final MAXNAMESIZE:I = 0xff

.field public static final NAME_COMPRESSION:I = 0xc0

.field public static final NAME_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DnsRecord"


# instance fields
.field public final dName:Ljava/lang/String;

.field private final mRdata:[B

.field public final nsClass:I

.field public final nsType:I

.field final synthetic this$0:Lcom/android/net/module/util/DnsPacket;

.field public final ttl:J


# direct methods
.method constructor <init>(Lcom/android/net/module/util/DnsPacket;ILjava/nio/ByteBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->this$0:Lcom/android/net/module/util/DnsPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_4d

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    if-eqz p2, :cond_45

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_4c

    :cond_45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    :goto_4c
    return-void

    :cond_4d
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse name fail, name size is too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getRR()[B
    .registers 2

    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_c
    return-object v0
.end method
