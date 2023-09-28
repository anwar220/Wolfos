# classes4.dex

.class public final Lcom/android/internal/compat/OverrideAllowedState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/OverrideAllowedState$State;
    }
.end annotation


# static fields
.field public static final ALLOWED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/OverrideAllowedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFERRED_VERIFICATION:I = 0x4

.field public static final DISABLED_NON_TARGET_SDK:I = 0x2

.field public static final DISABLED_NOT_DEBUGGABLE:I = 0x1

.field public static final DISABLED_TARGET_SDK_TOO_HIGH:I = 0x3

.field public static final LOGGING_ONLY_CHANGE:I = 0x5

.field public static final PLATFORM_TOO_OLD:I = 0x6


# instance fields
.field public final appTargetSdk:I

.field public final changeIdTargetSdk:I

.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState$1;

    invoke-direct {v0}, Lcom/android/internal/compat/OverrideAllowedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/OverrideAllowedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iput p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iput p3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/compat/OverrideAllowedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private stateName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch v0, :pswitch_data_1e

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_8  #0x6
    const-string v0, "PLATFORM_TOO_OLD"

    return-object v0

    :pswitch_b  #0x5
    const-string v0, "LOGGING_ONLY_CHANGE"

    return-object v0

    :pswitch_e  #0x4
    const-string v0, "DEFERRED_VERIFICATION"

    return-object v0

    :pswitch_11  #0x3
    const-string v0, "DISABLED_TARGET_SDK_TOO_HIGH"

    return-object v0

    :pswitch_14  #0x2
    const-string v0, "DISABLED_NON_TARGET_SDK"

    return-object v0

    :pswitch_17  #0x1
    const-string v0, "DISABLED_NOT_DEBUGGABLE"

    return-object v0

    :pswitch_1a  #0x0
    const-string v0, "ALLOWED"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public enforce(JLjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_74

    return-void

    :pswitch_a  #0x6
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object p3, v1, v3

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Cannot override %1$d for %2$s because the change\'s targetSdk threshold (%3$d) is above the platform sdk."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28  #0x5
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Cannot override %1$d because it is marked as a logging-only change."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3c  #0x3
    new-instance v0, Ljava/lang/SecurityException;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object p3, v5, v3

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "Cannot override %1$d for %2$s because the app\'s targetSdk (%3$d) is above the change\'s targetSdk threshold (%4$d)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_63  #0x2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a default enabled/disabled change on a user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6b  #0x1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a change on a non-debuggable app and user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_73  #0x0, 0x4
    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_6b  #00000001
        :pswitch_63  #00000002
        :pswitch_3c  #00000003
        :pswitch_73  #00000004
        :pswitch_28  #00000005
        :pswitch_a  #00000006
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/android/internal/compat/OverrideAllowedState;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/OverrideAllowedState;

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideAllowedState(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/compat/OverrideAllowedState;->stateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; appTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; changeIdTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
