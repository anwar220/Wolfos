# classes.dex

.class public Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpChangedInternalListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method