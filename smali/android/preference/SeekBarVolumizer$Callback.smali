# classes3.dex

.class public interface abstract Landroid/preference/SeekBarVolumizer$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onMuted(ZZ)V
.end method

.method public abstract onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end method

.method public abstract onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
.end method

.method public abstract onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
.end method

.method public onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .registers 2

    return-void
.end method
