# classes.dex

.class public final synthetic Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictor$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictor$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictor$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/app/prediction/AppPredictor$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictor$Callback;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Landroid/app/prediction/AppPredictor$Callback;->onTargetsAvailable(Ljava/util/List;)V

    return-void
.end method
