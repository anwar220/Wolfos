# classes2.dex

.class public final Landroid/view/translation/TranslationSpec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationSpec$DataFormat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_FORMAT_TEXT:I = 0x1


# instance fields
.field private final mDataFormat:I

.field private final mLanguage:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/translation/TranslationSpec$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationSpec$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    iput p2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/view/translation/TranslationSpec;->unparcelLocale(Landroid/os/Parcel;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    const-class v3, Ljava/lang/Deprecated;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    const-class v3, Landroid/view/translation/TranslationSpec$DataFormat;

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    iput p2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static unparcelLocale(Landroid/os/Parcel;)Landroid/icu/util/ULocale;
    .registers 3

    const-class v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    return-object v0
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

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/translation/TranslationSpec;

    iget-object v3, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    iget v4, v2, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getDataFormat()I
    .registers 2

    iget v0, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    add-int/2addr v1, v2

    return v1
.end method

.method parcelLocale(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationSpec { language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationSpec;->parcelLocale(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
