# classes3.dex

.class public interface abstract Landroid/telecom/CallDiagnostics$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
.end method

.method public abstract onDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
.end method

.method public abstract onSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
.end method
