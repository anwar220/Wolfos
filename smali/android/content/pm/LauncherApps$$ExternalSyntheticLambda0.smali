# classes.dex

.class public final synthetic Landroid/content/pm/LauncherApps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/LauncherApps;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherApps;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/LauncherApps$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/LauncherApps$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherApps;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Landroid/content/pm/LauncherApps;->$r8$lambda$esoaznWa_yCnTX41NWDZ7y8enFU(Landroid/content/pm/LauncherApps;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
