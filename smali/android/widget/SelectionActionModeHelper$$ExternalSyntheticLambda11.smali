# classes4.dex

.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/widget/SelectionActionModeHelper;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;->f$0:Landroid/widget/SelectionActionModeHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;->f$0:Landroid/widget/SelectionActionModeHelper;

    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-static {v0, p1}, Landroid/widget/SelectionActionModeHelper;->$r8$lambda$mMDhXh3JQs_q5UuyTdq2CLenZJk(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method
