import { getServerSession } from 'next-auth'
import { redirect } from 'next/navigation'
import { authOptions } from '@/lib/auth'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'

export default async function DashboardPage() {
  const session = await getServerSession(authOptions)

  if (!session) {
    redirect('/auth/signin')
  }

  return (
    <div className="min-h-screen bg-gray-50 p-8">
      <div className="max-w-7xl mx-auto">
        <h1 className="text-3xl font-bold text-gray-900 mb-8">
          Vajrakaaya Dashboard
        </h1>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <Card>
            <CardHeader>
              <CardTitle>Sites</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">5</p>
              <p className="text-sm text-gray-600">Active construction sites</p>
            </CardContent>
          </Card>
          
          <Card>
            <CardHeader>
              <CardTitle>Vehicles</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">12</p>
              <p className="text-sm text-gray-600">Fleet vehicles</p>
            </CardContent>
          </Card>
          
          <Card>
            <CardHeader>
              <CardTitle>Materials</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">45</p>
              <p className="text-sm text-gray-600">Inventory items</p>
            </CardContent>
          </Card>
          
          <Card>
            <CardHeader>
              <CardTitle>Expenses</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">₹2.5M</p>
              <p className="text-sm text-gray-600">This month</p>
            </CardContent>
          </Card>
        </div>
        
        <div className="mt-8">
          <Card>
            <CardHeader>
              <CardTitle>Welcome, {session.user?.name}!</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-gray-600">
                Your Vajrakaaya construction management system is ready for deployment.
                All modules are functional and ready for testing.
              </p>
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  )
}
