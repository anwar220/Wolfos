# classes2.dex

.class public final synthetic Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/textservice/SpellCheckerSession;

.field public final synthetic f$1:[Landroid/view/textservice/SuggestionsInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;->f$0:Landroid/view/textservice/SpellCheckerSession;

    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;->f$1:[Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;->f$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;->f$1:[Landroid/view/textservice/SuggestionsInfo;

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerSession;->lambda$handleOnGetSuggestionsMultiple$0$android-view-textservice-SpellCheckerSession([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method
