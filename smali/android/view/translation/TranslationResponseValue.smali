# classes2.dex

.class public final Landroid/view/translation/TranslationResponseValue;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponseValue$Builder;,
        Landroid/view/translation/TranslationResponseValue$Status;,
        Landroid/view/translation/TranslationResponseValue$BaseBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_DEFINITIONS:Ljava/lang/String; = "android.view.translation.extra.DEFINITIONS"

.field public static final STATUS_ERROR:I = 0x1

.field public static final STATUS_SUCCESS:I


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mStatusCode:I

.field private final mText:Ljava/lang/CharSequence;

.field private final mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultText()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/translation/TranslationResponseValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponseValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponseValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz p1, :cond_3f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_3f

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), STATUS_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    :goto_3f
    iput-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_20

    move-object v5, v3

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_24
    iput v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz v1, :cond_60

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2c

    goto :goto_60

    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), STATUS_ERROR("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_60
    :goto_60
    iput-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    const-class v6, Landroid/annotation/NonNull;

    invoke-static {v6, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static defaultExtras()Landroid/os/Bundle;
    .registers 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static defaultText()Ljava/lang/CharSequence;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private extrasEquals(Landroid/os/Bundle;)Z
    .registers 3

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public static forError()Landroid/view/translation/TranslationResponseValue;
    .registers 4

    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x1
    const-string v0, "STATUS_ERROR"

    return-object v0

    :pswitch_b  #0x0
    const-string v0, "STATUS_SUCCESS"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/translation/TranslationResponseValue;

    iget v3, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    iget v4, v2, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v2, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Landroid/view/translation/TranslationResponseValue;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTransliteration()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponseValue { statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-static {v1}, Landroid/view/translation/TranslationResponseValue;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transliteration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_1e
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method
