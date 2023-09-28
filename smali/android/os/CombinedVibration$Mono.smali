# classes3.dex

.class public final Landroid/os/CombinedVibration$Mono;
.super Landroid/os/CombinedVibration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mono"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Mono;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/CombinedVibration$Mono$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Mono$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Mono;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iput-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method constructor <init>(Landroid/os/VibrationEffect;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    iput-object p1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    iget-object v2, v0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffect()Landroid/os/VibrationEffect;
    .registers 2

    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public hasVibrator(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHapticFeedbackCandidate()Z
    .registers 2

    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mono{mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 2

    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
