# classes3.dex

.class public final synthetic Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallDiagnostics;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallDiagnostics;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$0:Landroid/telecom/CallDiagnostics;

    iput p2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$0:Landroid/telecom/CallDiagnostics;

    iget v1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telecom/CallDiagnosticService;->lambda$handleReceivedD2DMessage$3(Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method
