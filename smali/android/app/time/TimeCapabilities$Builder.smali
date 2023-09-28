# classes.dex

.class public Landroid/app/time/TimeCapabilities$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfigureAutoDetectionEnabledCapability:I

.field private mSuggestTimeManuallyCapability:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/time/TimeCapabilities;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmConfigureAutoTimeDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private verifyCapabilitySet(ILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/app/time/TimeCapabilities;
    .registers 3

    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    const-string v1, "configureAutoDetectionEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    const-string/jumbo v1, "suggestTimeManuallyCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    new-instance v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V

    return-object v0
.end method

.method public setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .registers 2

    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    return-object p0
.end method

.method public setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .registers 2

    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    return-object p0
.end method
