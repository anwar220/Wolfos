# classes3.dex

.class public final synthetic Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/speech/RecognitionService;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/RecognitionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionService;

    check-cast p1, Landroid/content/AttributionSource;

    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->$r8$lambda$w4RfsJ0Mifma_PY1OHH9A_qI1-o(Landroid/speech/RecognitionService;Landroid/content/AttributionSource;)V

    return-void
.end method
