# classes2.dex

.class public abstract Landroid/media/AudioManagerInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManagerInternal$RingerModeDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAssistantServiceUid(I)V
.end method

.method public abstract getRingerModeInternal()I
.end method

.method public abstract removeAssistantServiceUid(I)V
.end method

.method public abstract setAccessibilityServiceUids(Landroid/util/IntArray;)V
.end method

.method public abstract setActiveAssistantServicesUids(Landroid/util/IntArray;)V
.end method

.method public abstract setInputMethodServiceUid(I)V
.end method

.method public abstract setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
.end method

.method public abstract setRingerModeInternal(ILjava/lang/String;)V
.end method

.method public abstract silenceRingerModeInternal(Ljava/lang/String;)V
.end method

.method public abstract updateRingerModeAffectedStreamsInternal()V
.end method
