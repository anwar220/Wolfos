# classes.dex

.class public final synthetic Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/search/SearchSession$CallbackWrapper;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSession$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iput-object p2, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iget-object v1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0, v1}, Landroid/app/search/SearchSession$CallbackWrapper;->lambda$onResult$0$android-app-search-SearchSession$CallbackWrapper(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
