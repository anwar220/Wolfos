# classes3.dex

.class public final synthetic Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$2:Landroid/view/textclassifier/TextClassification$Request;

.field public final synthetic f$3:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$2:Landroid/view/textclassifier/TextClassification$Request;

    iput-object p4, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$2:Landroid/view/textclassifier/TextClassification$Request;

    iget-object v3, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/textclassifier/TextClassifierService$1;->lambda$onClassifyText$1$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method
