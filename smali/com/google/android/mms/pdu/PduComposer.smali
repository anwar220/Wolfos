# classes4.dex

.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStack(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    nop

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v2, p0, v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack-IA;)V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1b

    const-string v2, "/TYPE=PLMN"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_34

    :cond_1b
    const/4 v2, 0x3

    if-ne v2, v1, :cond_28

    const-string v2, "/TYPE=IPV4"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_34

    :cond_28
    const/4 v2, 0x4

    if-ne v2, v1, :cond_34

    const-string v2, "/TYPE=IPV6"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_34} :catch_36

    :cond_34
    :goto_34
    nop

    return-object v0

    :catch_36
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method private appendHeader(I)I
    .registers 10

    const/16 v0, 0x80

    const-wide/16 v1, -0x1

    const/16 v3, 0x81

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_176

    :pswitch_b  #0x83, 0x84, 0x87, 0x8c, 0x8e, 0x92, 0x93, 0x94
    const/4 v0, 0x3

    return v0

    :pswitch_d  #0x96, 0x9a
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_16

    return v5

    :cond_16
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_173

    :pswitch_1e  #0x8d
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    if-nez v0, :cond_30

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_173

    :cond_30
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_173

    :pswitch_35  #0x8b, 0x98
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    if-nez v0, :cond_3e

    return v5

    :cond_3e
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_173

    :pswitch_46  #0x8a
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_4f

    return v5

    :cond_4f
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    nop

    const-string v2, "advertisement"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_173

    :cond_64
    nop

    const-string v2, "auto"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_78

    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_173

    :cond_78
    nop

    const-string/jumbo v2, "personal"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_173

    :cond_8b
    nop

    const-string v0, "informational"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_173

    :cond_9f
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_173

    :pswitch_a4  #0x89
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f7

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "insert-address-token"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    goto :goto_f7

    :cond_cb
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_e0

    return v4

    :cond_e0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_173

    :cond_f7
    :goto_f7
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_173

    :pswitch_ff  #0x88
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    cmp-long v0, v1, v6

    if-nez v0, :cond_10a

    return v5

    :cond_10a
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_173

    :pswitch_131  #0x86, 0x8f, 0x90, 0x91, 0x95, 0x99, 0x9b
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    if-nez v0, :cond_13a

    return v5

    :cond_13a
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto :goto_173

    :pswitch_141  #0x85
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_14c

    return v5

    :cond_14c
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto :goto_173

    :pswitch_153  #0x81, 0x82, 0x97
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_15c

    return v5

    :cond_15c
    const/4 v1, 0x0

    :goto_15d
    array-length v2, v0

    if-ge v1, v2, :cond_172

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-nez v2, :cond_169

    return v4

    :cond_169
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    :cond_172
    nop

    :goto_173
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_176
    .packed-switch 0x81
        :pswitch_153  #00000081
        :pswitch_153  #00000082
        :pswitch_b  #00000083
        :pswitch_b  #00000084
        :pswitch_141  #00000085
        :pswitch_131  #00000086
        :pswitch_b  #00000087
        :pswitch_ff  #00000088
        :pswitch_a4  #00000089
        :pswitch_46  #0000008a
        :pswitch_35  #0000008b
        :pswitch_b  #0000008c
        :pswitch_1e  #0000008d
        :pswitch_b  #0000008e
        :pswitch_131  #0000008f
        :pswitch_131  #00000090
        :pswitch_131  #00000091
        :pswitch_b  #00000092
        :pswitch_b  #00000093
        :pswitch_b  #00000094
        :pswitch_131  #00000095
        :pswitch_d  #00000096
        :pswitch_153  #00000097
        :pswitch_35  #00000098
        :pswitch_131  #00000099
        :pswitch_d  #0000009a
        :pswitch_131  #0000009b
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x5

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x3

    return v0

    :cond_e
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x2

    return v0

    :cond_22
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x4

    return v0

    :cond_2c
    return v0
.end method

.method private makeAckInd()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    return v2

    :cond_22
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    return v1
.end method

.method private makeMessageBody(I)I
    .registers 33

    move-object/from16 v1, p0

    const-string v2, ">"

    const-string v3, "<"

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    move-object v5, v0

    sget-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, 0x1

    if-nez v7, :cond_2c

    return v8

    :cond_2c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    move/from16 v9, p1

    if-ne v9, v6, :cond_41

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v6, v0

    goto :goto_4a

    :cond_41
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v6, v0

    :goto_4a
    const/4 v10, 0x0

    if-eqz v6, :cond_307

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v0

    if-nez v0, :cond_5b

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto/16 :goto_30d

    :cond_5b
    const/16 v11, 0x3e

    const/16 v12, 0x3c

    :try_start_5f
    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v13

    if-eqz v13, :cond_99

    const/16 v14, 0x8a

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    aget-byte v14, v13, v10

    if-ne v12, v14, :cond_7c

    array-length v14, v13

    sub-int/2addr v14, v8

    aget-byte v14, v13, v14

    if-ne v11, v14, :cond_7c

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_99

    :cond_7c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    :cond_99
    :goto_99
    const/16 v14, 0x89

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5f .. :try_end_a5} :catch_a6

    goto :goto_aa

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_aa
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v14, v13

    invoke-virtual {v1, v14, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v14

    int-to-long v11, v14

    invoke-virtual {v1, v11, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    const/4 v0, 0x0

    move v11, v0

    :goto_c6
    if-ge v11, v14, :cond_305

    invoke-virtual {v6, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v12

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v17

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v18

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v15

    if-nez v15, :cond_e9

    return v8

    :cond_e9
    sget-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_fd

    invoke-virtual {v1, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_104

    :cond_fd
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    :goto_104
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-nez v0, :cond_11b

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-nez v0, :cond_119

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-nez v0, :cond_117

    return v8

    :cond_117
    move-object v8, v0

    goto :goto_11c

    :cond_119
    move-object v8, v0

    goto :goto_11c

    :cond_11b
    move-object v8, v0

    :goto_11c
    const/16 v0, 0x85

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {v1, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    move-object/from16 v19, v4

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v4

    if-eqz v4, :cond_134

    const/16 v0, 0x81

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    :cond_134
    move/from16 v20, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v4

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    int-to-long v5, v4

    invoke-virtual {v1, v5, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    if-eqz v5, :cond_18c

    const/16 v0, 0xc0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/4 v6, 0x0

    aget-byte v0, v5, v6

    const/16 v6, 0x3c

    if-ne v6, v0, :cond_16d

    array-length v0, v5

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v5, v0

    const/16 v6, 0x3e

    if-ne v6, v0, :cond_16f

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    goto :goto_18c

    :cond_16d
    const/16 v6, 0x3e

    :cond_16f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    :cond_18c
    :goto_18c
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v6

    if-eqz v6, :cond_19a

    const/16 v0, 0x8e

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_19a
    move-object/from16 v23, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v2

    const/16 v24, 0x0

    move-object/from16 v25, v3

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_1ba

    array-length v0, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    array-length v0, v3

    move-object/from16 v27, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto/16 :goto_225

    :cond_1ba
    move/from16 v26, v4

    const/4 v4, 0x0

    const/16 v0, 0x400

    :try_start_1bf
    new-array v0, v0, [B
    :try_end_1c1
    .catch Ljava/io/FileNotFoundException; {:try_start_1bf .. :try_end_1c1} :catch_2f1
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c1} :catch_2dd
    .catch Ljava/lang/RuntimeException; {:try_start_1bf .. :try_end_1c1} :catch_2c9
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_2b7

    move-object/from16 v27, v3

    :try_start_1c3
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;
    :try_end_1c5
    .catch Ljava/io/FileNotFoundException; {:try_start_1c3 .. :try_end_1c5} :catch_2af
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c5} :catch_2a7
    .catch Ljava/lang/RuntimeException; {:try_start_1c3 .. :try_end_1c5} :catch_29f
    .catchall {:try_start_1c3 .. :try_end_1c5} :catchall_296

    move-object/from16 v28, v4

    :try_start_1c7
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1cf
    .catch Ljava/io/FileNotFoundException; {:try_start_1c7 .. :try_end_1cf} :catch_28d
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1cf} :catch_284
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_1cf} :catch_27c
    .catchall {:try_start_1c7 .. :try_end_1cf} :catchall_273

    move-object v4, v3

    const/4 v3, 0x0

    :goto_1d1
    move/from16 v28, v3

    :try_start_1d3
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1d7
    .catch Ljava/io/FileNotFoundException; {:try_start_1d3 .. :try_end_1d7} :catch_26c
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d7} :catch_265
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1d7} :catch_25e
    .catchall {:try_start_1d3 .. :try_end_1d7} :catchall_256

    move/from16 v29, v3

    move-object/from16 v30, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_217

    :try_start_1de
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;
    :try_end_1e0
    .catch Ljava/io/FileNotFoundException; {:try_start_1de .. :try_end_1e0} :catch_212
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e0} :catch_20d
    .catch Ljava/lang/RuntimeException; {:try_start_1de .. :try_end_1e0} :catch_208
    .catchall {:try_start_1de .. :try_end_1e0} :catchall_202

    move/from16 v5, v29

    move-object/from16 v29, v6

    const/4 v6, 0x0

    :try_start_1e5
    invoke-virtual {v3, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_1ed
    .catch Ljava/io/FileNotFoundException; {:try_start_1e5 .. :try_end_1ed} :catch_1ff
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1ed} :catch_1fc
    .catch Ljava/lang/RuntimeException; {:try_start_1e5 .. :try_end_1ed} :catch_1f9
    .catchall {:try_start_1e5 .. :try_end_1ed} :catchall_1f5

    add-int v24, v24, v5

    move v3, v5

    move-object/from16 v6, v29

    move-object/from16 v5, v30

    goto :goto_1d1

    :catchall_1f5
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2c1

    :catch_1f9
    move-exception v0

    goto/16 :goto_2d2

    :catch_1fc
    move-exception v0

    goto/16 :goto_2e6

    :catch_1ff
    move-exception v0

    goto/16 :goto_2fa

    :catchall_202
    move-exception v0

    move-object/from16 v29, v6

    move-object v3, v0

    goto/16 :goto_2c1

    :catch_208
    move-exception v0

    move-object/from16 v29, v6

    goto/16 :goto_2d2

    :catch_20d
    move-exception v0

    move-object/from16 v29, v6

    goto/16 :goto_2e6

    :catch_212
    move-exception v0

    move-object/from16 v29, v6

    goto/16 :goto_2fa

    :cond_217
    move/from16 v5, v29

    move-object/from16 v29, v6

    if-eqz v4, :cond_223

    :try_start_21d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_220} :catch_221

    :goto_220
    goto :goto_223

    :catch_221
    move-exception v0

    goto :goto_220

    :cond_223
    :goto_223
    move/from16 v0, v24

    :goto_225
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_24e

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_c6

    :cond_24e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "BUG: Length correctness check failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_256
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object v3, v0

    goto/16 :goto_2c1

    :catch_25e
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto/16 :goto_2d2

    :catch_265
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto/16 :goto_2e6

    :catch_26c
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto/16 :goto_2fa

    :catchall_273
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object v3, v0

    move-object/from16 v4, v28

    goto :goto_2c1

    :catch_27c
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v4, v28

    goto :goto_2d2

    :catch_284
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v4, v28

    goto/16 :goto_2e6

    :catch_28d
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v4, v28

    goto/16 :goto_2fa

    :catchall_296
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object v3, v0

    goto :goto_2c1

    :catch_29f
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto :goto_2d2

    :catch_2a7
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto :goto_2e6

    :catch_2af
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto :goto_2fa

    :catchall_2b7
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object v3, v0

    :goto_2c1
    if-eqz v4, :cond_2c8

    :try_start_2c3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2c6
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2c6} :catch_2c7

    goto :goto_2c8

    :catch_2c7
    move-exception v0

    :cond_2c8
    :goto_2c8
    throw v3

    :catch_2c9
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :goto_2d2
    move-object v3, v0

    nop

    if-eqz v4, :cond_2db

    :try_start_2d6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2d9
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2d9} :catch_2da

    goto :goto_2db

    :catch_2da
    move-exception v0

    :cond_2db
    :goto_2db
    const/4 v5, 0x1

    return v5

    :catch_2dd
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :goto_2e6
    move-object v3, v0

    nop

    if-eqz v4, :cond_2ef

    :try_start_2ea
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2ed
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_2ed} :catch_2ee

    goto :goto_2ef

    :catch_2ee
    move-exception v0

    :cond_2ef
    :goto_2ef
    const/4 v5, 0x1

    return v5

    :catch_2f1
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :goto_2fa
    move-object v3, v0

    nop

    if-eqz v4, :cond_303

    :try_start_2fe
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_301} :catch_302

    goto :goto_303

    :catch_302
    move-exception v0

    :cond_303
    :goto_303
    const/4 v5, 0x1

    return v5

    :cond_305
    const/4 v2, 0x0

    return v2

    :cond_307
    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    :goto_30d
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    const/4 v2, 0x0

    return v2
.end method

.method private makeNotifyResp()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    return v2

    :cond_22
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_34

    return v2

    :cond_34
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    return v1
.end method

.method private makeReadRecInd()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    return v2

    :cond_22
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_34

    return v2

    :cond_34
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3d

    return v2

    :cond_3d
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4b

    return v2

    :cond_4b
    return v1
.end method

.method private makeSendRetrievePdu(I)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    const/16 v1, 0x8d

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    return v2

    :cond_30
    const/16 v1, 0x85

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v1, 0x89

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v1

    if-eqz v1, :cond_3e

    return v2

    :cond_3e
    const/4 v1, 0x0

    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_48

    const/4 v1, 0x1

    :cond_48
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_51

    const/4 v1, 0x1

    :cond_51
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    if-nez v1, :cond_5d

    return v2

    :cond_5d
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x84

    if-ne p1, v2, :cond_89

    const/16 v3, 0x99

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v3, 0x9a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    :cond_89
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result v2

    return v2

    :cond_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transaction-ID is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected append(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 8

    nop

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    return-void
.end method

.method protected appendLongInteger(J)V
    .registers 12

    move-wide v0, p1

    const/4 v2, 0x0

    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/16 v4, 0x8

    if-eqz v3, :cond_10

    if-ge v2, v4, :cond_10

    ushr-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_27

    ushr-long v5, p1, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    add-int/lit8 v3, v3, -0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    return-void
.end method

.method protected appendTextString([B)V
    .registers 5

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    :cond_c
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 15

    const-wide/16 v0, 0x7f

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x5

    const-wide/16 v4, 0x7f

    if-ge v2, v3, :cond_15

    cmp-long v3, p1, v0

    if-gez v3, :cond_d

    goto :goto_15

    :cond_d
    const/4 v3, 0x7

    shl-long v6, v0, v3

    or-long v0, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_15
    :goto_15
    if-lez v2, :cond_2a

    mul-int/lit8 v3, v2, 0x7

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x80

    or-long/2addr v8, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v3, v8

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    nop

    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2a
    and-long v3, p1, v4

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5

    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    return-void

    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    return-void
.end method

.method protected arraycopy([BII)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method public make()[B
    .registers 4

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    :pswitch_a  #0x81, 0x82, 0x86
    return-object v1

    :pswitch_b  #0x87
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :pswitch_12  #0x85
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :pswitch_19  #0x83
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :pswitch_20  #0x80, 0x84
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendRetrievePdu(I)I

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :cond_27
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :pswitch_data_2e
    .packed-switch 0x80
        :pswitch_20  #00000080
        :pswitch_a  #00000081
        :pswitch_a  #00000082
        :pswitch_19  #00000083
        :pswitch_20  #00000084
        :pswitch_12  #00000085
        :pswitch_a  #00000086
        :pswitch_b  #00000087
    .end packed-switch
.end method
