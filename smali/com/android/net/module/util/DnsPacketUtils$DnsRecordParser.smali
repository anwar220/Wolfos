# classes4.dex

.class public Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacketUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsRecordParser"
.end annotation


# static fields
.field private static final MAXLABELCOUNT:I = 0x80

.field private static final MAXLABELSIZE:I = 0x3f

.field private static final sByteFormat:Ljava/text/DecimalFormat;

.field private static final sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static labelToString([B)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_54

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_46

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1a

    goto :goto_46

    :cond_1a
    const/16 v3, 0x22

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3e

    if-eq v2, v4, :cond_3e

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x24

    if-ne v2, v3, :cond_39

    goto :goto_3e

    :cond_39
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    :cond_3e
    :goto_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    :cond_46
    :goto_46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v6, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v6}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    const/16 v0, 0x80

    if-gt p1, v0, :cond_a2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-nez v0, :cond_13

    const-string v2, ""

    return-object v2

    :cond_13
    const/16 v2, 0xc0

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_1e

    :cond_19
    if-nez p2, :cond_37

    if-eq v1, v2, :cond_1e

    goto :goto_37

    :cond_1e
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse name fail, bad label type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    :goto_37
    if-ne v1, v2, :cond_63

    and-int/lit16 v2, v0, -0xc1

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v4, v3, -0x2

    if-ge v2, v4, :cond_5b

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v4

    :cond_5b
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse compression name fail, invalid compression"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_63
    new-array v2, v0, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->labelToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_9a

    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_82

    move-object v5, v3

    goto :goto_99

    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_99
    return-object v5

    :cond_9a
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse name fail, invalid label length"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a2
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Failed to parse name, too many labels"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
