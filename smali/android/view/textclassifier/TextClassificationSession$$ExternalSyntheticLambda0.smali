# classes2.dex

.class public final synthetic Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationSession;

.field public final synthetic f$1:Landroid/view/textclassifier/ConversationActions$Request;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/ConversationActions$Request;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;->f$1:Landroid/view/textclassifier/ConversationActions$Request;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationSession;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;->f$1:Landroid/view/textclassifier/ConversationActions$Request;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$suggestConversationActions$3$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method