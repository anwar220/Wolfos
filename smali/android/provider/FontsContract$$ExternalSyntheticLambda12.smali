# classes3.dex

.class public final synthetic Landroid/provider/FontsContract$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/provider/FontsContract$FontRequestCallback;

.field public final synthetic f$1:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iput-object p2, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iget-object v1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/provider/FontsContract;->lambda$requestFonts$1(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void
.end method
