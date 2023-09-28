# classes4.dex

.class public Lcom/android/internal/widget/PasswordValidationError;
.super Ljava/lang/Object;


# static fields
.field public static final CONTAINS_INVALID_CHARACTERS:I = 0x2

.field public static final CONTAINS_SEQUENCE:I = 0x6

.field public static final NOT_ENOUGH_DIGITS:I = 0xa

.field public static final NOT_ENOUGH_LETTERS:I = 0x7

.field public static final NOT_ENOUGH_LOWER_CASE:I = 0x9

.field public static final NOT_ENOUGH_NON_DIGITS:I = 0xd

.field public static final NOT_ENOUGH_NON_LETTER:I = 0xc

.field public static final NOT_ENOUGH_SYMBOLS:I = 0xb

.field public static final NOT_ENOUGH_UPPER_CASE:I = 0x8

.field public static final RECENTLY_USED:I = 0xe

.field public static final TOO_LONG:I = 0x5

.field public static final TOO_SHORT:I = 0x3

.field public static final TOO_SHORT_WHEN_ALL_NUMERIC:I = 0x4

.field public static final WEAK_CREDENTIAL_TYPE:I = 0x1


# instance fields
.field public final errorCode:I

.field public final requirement:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    iput p2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    return-void
.end method

.method private static errorCodeToString(I)Ljava/lang/String;
    .registers 3

    const-string v0, "Password too short"

    packed-switch p0, :pswitch_data_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19  #0xe
    const-string v0, "Pin or password was recently used"

    return-object v0

    :pswitch_1c  #0xd
    const-string v0, "Too few non-numeric characters"

    return-object v0

    :pswitch_1f  #0xc
    const-string v0, "Too few non-letter characters"

    return-object v0

    :pswitch_22  #0xb
    const-string v0, "Too few symbols"

    return-object v0

    :pswitch_25  #0xa
    const-string v0, "Too few numeric characters"

    return-object v0

    :pswitch_28  #0x9
    const-string v0, "Too few lower case letters"

    return-object v0

    :pswitch_2b  #0x8
    const-string v0, "Too few upper case letters"

    return-object v0

    :pswitch_2e  #0x7
    const-string v0, "Too few letters"

    return-object v0

    :pswitch_31  #0x6
    const-string v0, "Sequence too long"

    return-object v0

    :pswitch_34  #0x5
    const-string v0, "Password too long"

    return-object v0

    :pswitch_37  #0x4
    return-object v0

    :pswitch_38  #0x3
    return-object v0

    :pswitch_39  #0x2
    const-string v0, "Contains an invalid character"

    return-object v0

    :pswitch_3c  #0x1
    const-string v0, "Weak credential type"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_39  #00000002
        :pswitch_38  #00000003
        :pswitch_37  #00000004
        :pswitch_34  #00000005
        :pswitch_31  #00000006
        :pswitch_2e  #00000007
        :pswitch_2b  #00000008
        :pswitch_28  #00000009
        :pswitch_25  #0000000a
        :pswitch_22  #0000000b
        :pswitch_1f  #0000000c
        :pswitch_1c  #0000000d
        :pswitch_19  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    invoke-static {v1}, Lcom/android/internal/widget/PasswordValidationError;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    if-lez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    const-string v1, ""

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
