# classes3.dex

.class public final Landroid/service/voice/HotwordRejectedResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordRejectedResult$Builder;,
        Landroid/service/voice/HotwordRejectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_LEVEL_HIGH:I = 0x3

.field public static final CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final CONFIDENCE_LEVEL_MEDIUM:I = 0x2

.field public static final CONFIDENCE_LEVEL_NONE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordRejectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfidenceLevel:I


# direct methods
.method static bridge synthetic -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordRejectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/voice/HotwordRejectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordRejectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    const-class v0, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    const-class v1, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static confidenceLevelToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    :pswitch_11  #0x0
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method private static defaultConfidenceLevel()I
    .registers 1

    const/4 v0, 0x0

    return v0
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

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    iget v3, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public getConfidenceLevel()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordRejectedResult { confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

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

    iget v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
