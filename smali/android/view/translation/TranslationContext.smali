# classes2.dex

.class public final Landroid/view/translation/TranslationContext;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationContext$Builder;,
        Landroid/view/translation/TranslationContext$TranslationFlag;,
        Landroid/view/translation/TranslationContext$BaseBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DEFINITIONS:I = 0x4

.field public static final FLAG_LOW_LATENCY:I = 0x1

.field public static final FLAG_TRANSLITERATION:I = 0x2


# instance fields
.field private final mActivityId:Landroid/app/assist/ActivityId;

.field private final mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final mTranslationFlags:I


# direct methods
.method static bridge synthetic -$$Nest$smdefaultActivityId()Landroid/app/assist/ActivityId;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultActivityId()Landroid/app/assist/ActivityId;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultTranslationFlags()I
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultTranslationFlags()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/translation/TranslationContext$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/translation/TranslationSpec;

    sget-object v2, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationContext;->unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;

    move-result-object v4

    iput-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v5, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v5, 0x7

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object v4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method constructor <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILandroid/app/assist/ActivityId;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static defaultActivityId()Landroid/app/assist/ActivityId;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultTranslationFlags()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private parcelActivityId(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_11
    return-void
.end method

.method static singleTranslationFlagToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3  #0x3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "FLAG_DEFINITIONS"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "FLAG_TRANSLITERATION"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "FLAG_LOW_LATENCY"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_3  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method

.method public static translationFlagToString(I)Ljava/lang/String;
    .registers 2

    new-instance v0, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Landroid/app/assist/ActivityId;

    invoke-direct {v1, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityId()Landroid/app/assist/ActivityId;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-object v0
.end method

.method public getSourceSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public getTargetSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public getTranslationFlags()I
    .registers 2

    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationContext { sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-static {v1}, Landroid/view/translation/TranslationContext;->translationFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

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

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Landroid/view/translation/TranslationContext;->parcelActivityId(Landroid/os/Parcel;I)V

    return-void
.end method
