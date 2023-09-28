# classes2.dex

.class public final synthetic Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/textclassifier/TextClassificationSessionFactory;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public final createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationManager;->lambda$new$0$android-view-textclassifier-TextClassificationManager(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p1

    return-object p1
.end method
